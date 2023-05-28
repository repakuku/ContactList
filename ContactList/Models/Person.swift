//
//  Person.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/27/23.
//

import Foundation

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPersons() -> [Person] {
        let firstNames = DataStore.shared.firstNames.shuffled()
        let secondNames = DataStore.shared.secondNames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        var persons: [Person] = []
        
        for i in 0...firstNames.count - 1 {
            let firstName = firstNames[i]
            let secondName = secondNames[i]
            let email = emails[i]
            let phoneNumber = phoneNumbers[i]
            
            persons.append(Person(
                firstName: firstName,
                secondName: secondName,
                email: email,
                phoneNumber: phoneNumber)
            )
        }
        
        return persons
    }
}
