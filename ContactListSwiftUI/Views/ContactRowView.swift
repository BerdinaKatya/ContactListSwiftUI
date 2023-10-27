//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Ekaterina Teliauberdina on 27.10.2023.
//

import SwiftUI

struct ContactRowView: View {
    let contact: Person
    
    var body: some View {
        Text(contact.fullName)
    }
}

#Preview {
    ContactRowView(contact: Person(name: "Bob", surname: "Smith", phoneNumber: "2345", email: "44@gr"))
}
