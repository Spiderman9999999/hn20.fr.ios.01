

import UIKit

class Contacts {
    var contactName: String
    var contactCategory: String

    init(contactName:String, phone:String) {
        self.contactName = contactName
        self.contactCategory = phone
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {


    @IBOutlet weak var tblContacts: UITableView!
    
    let searchController = UISearchController(searchResultsController: nil)

    var contactArray = [Contacts]()
    var filteredContact = [Contacts]()
    
    
    
    private func filterContact(for searchText: String) {
    filteredContact = contactArray.filter { contact in
      return
        contact.contactName.lowercased().contains(searchText.lowercased())
    }
    tblContacts.reloadData()
    }
    func updateSearchResults(for searchController: UISearchController) {
           filterContact(for: searchController.searchBar.text ?? "")
       }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let macBook = Contacts(contactName: "Nguyễn Minh Đức", phone: "093333444")
        contactArray.append(macBook)
        let macBookAir = Contacts(contactName: "Nguyễn Cao Minh", phone: "578444455")
        contactArray.append(macBookAir)
        let iMac = Contacts(contactName: "Nguyễn Duy Khoa", phone: "094455554")
        contactArray.append(iMac)
        let iPhone = Contacts(contactName: "Nguyễn Hồng Hà", phone: "093344444")
        contactArray.append(iPhone)
        let iPad = Contacts(contactName: "Cao Khang", phone: "097775455")
        contactArray.append(iPad)
        
        tblContacts.dataSource = self
        tblContacts.delegate = self
        var nameArray = [String]()
        for contact in contactArray {
            nameArray.append(contact.contactName)
         searchController.searchResultsUpdater = self
        definesPresentationContext = true
        tblContacts.tableHeaderView = searchController.searchBar
        searchController.searchBar.tintColor = UIColor.white
        searchController.searchBar.barTintColor = UIColor.yellow
            self.navigationController?.navigationBar.backgroundColor = UIColor.systemYellow

        }
    }
    
    
    //MARK:- UITableView methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive && searchController.searchBar.text != ""        {
            return filteredContact.count
         }
         return contactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "contactstable")
        let contact: Contacts

        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "contactstable")
        }
        if searchController.isActive && searchController.searchBar.text != ""
        {
           contact = filteredContact[indexPath.row]
         } else {
           contact = contactArray[indexPath.row]
         }
        
        
        cell?.textLabel?.text = contact.contactName
        cell?.detailTextLabel?.text = contact.contactCategory
        
        return cell!
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
            destination.contact = contactArray[(tblContacts.indexPathForSelectedRow?.row)!]
            tblContacts.deselectRow(at: tblContacts.indexPathForSelectedRow!, animated: true)

        }
    }
   

}
