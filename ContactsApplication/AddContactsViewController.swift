//
//  AddContactsViewController.swift
//  ContactsApplication
//
//  Created by Shashank on 2/18/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit
protocol ContactDetails {
    func userDidEnterDetails(name: String, phoneNumber: String)
}

class AddContactsViewController: UIViewController {
    var delegate: ContactDetails? = nil


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var PhoneNumberTextField: UITextField!
    @IBAction func saveButtonSelected(_ sender: Any) {
        if delegate != nil{
            if nameTextField.text != nil {
                if PhoneNumberTextField.text != nil {
                    let name = nameTextField.text
                    let phoneNumber = PhoneNumberTextField.text
                    delegate?.userDidEnterDetails(name: name!, phoneNumber: phoneNumber!)
                    _ = navigationController?.popViewController(animated: true)

                    
                }
            }
        }
    }
    
    @IBAction func cancelButtonSelected(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)

    }
}
