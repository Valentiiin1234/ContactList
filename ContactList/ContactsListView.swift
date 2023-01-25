//
//  Contacts.swift
//  ContactList
//
//  Created by Mac on 24.01.2023.
//

import SwiftUI

struct ContactsListView: View {
    @State var isPresented = false
    
    let contactInfo: [Person]
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            NavigationStack{
                List(contactInfo) { info in
                    Text("\(info.fullName)")
                }
                .listStyle(.plain)
                .navigationTitle("Контакты")
            }
        }.sheet(isPresented: $isPresented) {
            DetailsView(person: contactInfo[5])
}
        
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(contactInfo: Person.getContactList())
    }
    
}
