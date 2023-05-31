//
//  Person.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/27/23.
//

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
        
        let iterationCount = min(
            firstNames.count,
            secondNames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            persons.append(Person(
                firstName: firstNames[index],
                secondName: secondNames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index])
            )
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
