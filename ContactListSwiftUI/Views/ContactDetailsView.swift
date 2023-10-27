//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Ekaterina Teliauberdina on 27.10.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .padding()
                    .opacity(0.5)
                Spacer()
            }
            Label(contact.phoneNumber, systemImage: "phone")
            Label(contact.email, systemImage: "envelope")
        }
        .navigationTitle(contact.fullName)
    }
}

#Preview {
    ContactDetailsView(
        contact: Person(
            name: "Name",
            surname: "Surname",
            phoneNumber: "77777",
            email: "email"
        )
    )
}
