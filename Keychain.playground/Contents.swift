import UIKit

protocol KeychainWrapperProtocol: class {
    func saveData(key: String, value: String) -> Bool
    func loadData(key: String) -> String?
    func deleteData(key: String) -> Bool
}

class KeyChainImplement: KeychainWrapperProtocol {


        private func keychainQuery(withKey key: String) -> NSMutableDictionary {
            let result = NSMutableDictionary()
            result.setValue(kSecClassGenericPassword, forKey: kSecClass as String)
            result.setValue(key, forKey: kSecAttrService as String)
            result.setValue(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, forKey: kSecAttrAccessible as String)
            return result
        }
    
    
    
    func saveData(key: String, value: String) -> Bool {
         let objectData: Data? = value.data(using: .utf8, allowLossyConversion: false)
         let query = keychainQuery(withKey: key)

               if SecItemCopyMatching(query, nil) == noErr {
                   if let dictData = objectData {
                       let status = SecItemUpdate(query, NSDictionary(dictionary: [kSecValueData: dictData]))
                       print("Update status: ", status)
                       return true
                   } else {
                       return false
                   }
               } else {
                   if let dictData = objectData {
                       query.setValue(dictData, forKey: kSecValueData as String)
                       let status = SecItemAdd(query, nil)
                       print("Update status: ", status)
                      return true
                   }
               }
        return  false
    }
    
    func loadData(key: String) -> String? {
        let query = keychainQuery(withKey: key)
        query.setValue(kCFBooleanTrue, forKey: kSecReturnData as String)
        query.setValue(kCFBooleanTrue, forKey: kSecReturnAttributes as String)
        
        var result: CFTypeRef?
        let status = SecItemCopyMatching(query, &result)
        
        guard
            let resultsDict = result as? NSDictionary,
            let resultsData = resultsDict.value(forKey: kSecValueData as String) as? Data,
            status == noErr
            else {
                print("Load status: ", status)
                return nil
        }
        return String(data: resultsData, encoding: .utf8)
    }
    
    func deleteData(key: String) -> Bool {
        
          let query = keychainQuery(withKey: key)
        if SecItemCopyMatching(query, nil) == noErr {
 
         let status =  SecItemDelete(query)
         print("Delete status: ", status)
         return true

        }   else {
         return false
        }
    
}
}
