//
//  ContactListApp.swift
//  ContactList
//
//  Created by Mac on 24.01.2023.
//

import SwiftUI

@main
struct ContactListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(contacts: Person.getContactList())
        }
    }
}
