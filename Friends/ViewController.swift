//
//  ViewController.swift
//  Friends
//
//  Created by morse on 3/6/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    let contactsManager = ContactsManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func createContactButton(_ sender: Any) {
        guard let nameEntered = textField1.text else { return }
        guard let phoneNumberEntered = textField2.text else { return }
        
        if nameEntered != "" && phoneNumberEntered != "" {
            contactsManager.createContact(name: nameEntered, phoneNumber: phoneNumberEntered)
            
            let index = contactsManager.contacts.count - 1
            
            let name = contactsManager.contacts[index].name
            let phone = contactsManager.contacts[index].phoneNumber
            
            textView.text = "\(name): \(phone)"
        }
    }
}

