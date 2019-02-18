//
//  ContactDetailsVC.swift
//  ContactsApplication
//
//  Created by Shashank on 2/18/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit

class ContactDetailsVC: UIViewController {
    var contact: Contacts? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextLabel.text = contact?.name
        phoneNumberTextLabel.text = contact?.phoneNumber

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameTextLabel: UILabel!
    
   
    @IBOutlet weak var phoneNumberTextLabel: UILabel!
    
}
