//
//  contactManager.swift
//  Friends
//
//  Created by morse on 3/6/19.
//  Copyright © 2019 morse. All rights reserved.
//

class ContactsManager {
    var contacts: [Contact] = []
    
    
    func createContact(name: String, phoneNumber:String) {
        let newContact: Contact = Contact(name: name, phoneNumber: phoneNumber)
        contacts.append(newContact)
    }
}
