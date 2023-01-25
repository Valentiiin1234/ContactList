//
//  Person.swift
//  ContactList
//
//  Created by Mac on 24.01.2023.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
 
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let mails = DataStore.shared.mails.shuffled()
        let numbers = DataStore.shared.numbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            mails.count,
            numbers.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: mails[index],
                phoneNumber: numbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}


 



