//
//  ContactUIView.swift
//  ContactList
//
//  Created by Mac on 24.01.2023.
//

import SwiftUI

struct ContactsInfoListView: View {
    let contact: [Person]
    
    var body: some View {
        NavigationStack{
            List(contact) { info in
                Section {
                    HStack{
                        Image(systemName: "person.circle.fill").foregroundColor(.blue)
                        Text("\(info.fullName)")
                    }
                    HStack{
                        Image(systemName: "phone.fill").foregroundColor(.blue)
                        Text("\(info.phoneNumber)")
                    }
                    
                    HStack{
                        Image(systemName: "envelope.fill").foregroundColor(.blue)
                        Text("\(info.email)")
                    }
                }
                .navigationTitle("Контакты")
            }
        }
    }
}


struct ContactUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsInfoListView(contact: Person.getContactList())
    }
}

