//
//  ContactsTableViewController.swift
//  ContactsApplication
//
//  Created by Shashank on 2/18/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController,ContactDetails {
    
    var contacts: [Contacts] = []
    let cellId = "ContactCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func userDidEnterDetails(name: String, phoneNumber: String) {
        let con = Contacts(name: name, phoneNumber: phoneNumber)
        contacts.append(con)
        tableView.reloadData()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let contacts = self.contacts[indexPath.row]
        cell.textLabel?.text = contacts.name
        cell.detailTextLabel?.text = contacts.phoneNumber
        print(contacts.phoneNumber)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contactDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "ContactDetailsVC") as! ContactDetailsVC
        let contacts = self.contacts[indexPath.row]
        contactDetailsVC.contact = contacts
        
        self.navigationController?.pushViewController(contactDetailsVC, animated: true)
    }
    
    
    @IBAction func addButtonSelected(_ sender: Any) {
        let addContactsVC = self.storyboard?.instantiateViewController(withIdentifier: "AddContactsViewController") as! AddContactsViewController
        addContactsVC.delegate = self
        self.navigationController?.pushViewController(addContactsVC, animated: true)
    }
    
}
