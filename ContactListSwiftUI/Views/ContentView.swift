//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Ekaterina Teliauberdina on 27.10.2023.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getPersonsList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            NumbersContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
