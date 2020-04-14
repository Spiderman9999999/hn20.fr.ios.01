//
//  MainViewController.swift
//  iOSBasicSampleDay8
//
//  Created by VDK on 4/12/20.
//  Copyright © 2020 VDK. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView(frame: .zero)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "titleCellIdentifier", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = "Touch Events"
        } else {
            cell.textLabel?.text = "Gesture Recognizer"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            pushToTouchEventsView()
        } else {
            pushToGestureRecognizerView()
        }
    }
    
    private func pushToTouchEventsView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let touchEventVC = storyboard.instantiateViewController(withIdentifier: "TouchEventViewController") as! TouchEventsViewController
         navigationController?.pushViewController(touchEventVC,
         animated: true)
    }
    
    private func pushToGestureRecognizerView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gestureVC = storyboard.instantiateViewController(withIdentifier: "GestureViewController") as! GestureViewController
         navigationController?.pushViewController(gestureVC,
         animated: true)
    }
}
