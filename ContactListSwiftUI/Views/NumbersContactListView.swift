//
//  DetailedContactListView.swift
//  ContactListSwiftUI
//
//  Created by Ekaterina Teliauberdina on 27.10.2023.
//

import SwiftUI

struct NumbersContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.name) { contact in
                Section(header: Text(contact.fullName)) {
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "envelope")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumbersContactListView(contacts: Person.getPersonsList())
}
