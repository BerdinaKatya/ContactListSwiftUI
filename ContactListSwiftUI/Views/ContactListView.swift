//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Ekaterina Teliauberdina on 27.10.2023.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.name) { contact in
                NavigationLink(destination: ContactDetailsView(contact: contact)) {
                    ContactRowView(contact: contact)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactListView(contacts: Person.getPersonsList())
}
