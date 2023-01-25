//
//  DetailsView.swift
//  ContactList
//
//  Created by Mac on 24.01.2023.
//

import SwiftUI

struct DetailsView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("\(person.fullName)")
                    .font(.title)
                Spacer()
                Button("done") {}
                
            }
            .padding()
            Form{
                HStack{
                    Image(systemName: "phone.fill").foregroundColor(.blue)
                    Spacer()
                    Text("\(person.phoneNumber)")
                        
                }
                HStack{
                    Image(systemName: "envelope.fill").foregroundColor(.blue)
                    Spacer()
                    Text("\(person.email)")
                }
            }
            Spacer()
        }
        
    }
    
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.getContactList()[0])
    }
}



