//
//  ContentView.swift
//  ContactList
//
//  Created by Mac on 24.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    let contacts: [Person]
    
    var body: some View {
        TabView {
            ContactsListView(contactInfo: contacts)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("контакты")
                }
            ContactsInfoListView(contact: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("контакты")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contacts: Person.getContactList())
    }
}
