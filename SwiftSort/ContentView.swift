//
//  ContentView.swift
//  SwiftSort
//
//  Created by ٍٍRaneem A on 05/05/1445 AH.
//

import SwiftUI

    
    struct Contact: Identifiable {
        let id = UUID()
        let name: String
        let phone: String
        let image: String
    }
    
    struct ContactsView: View {
        @State var contacts = [
            Contact(name: "John Doe", phone: "+1234567890", image: "image"),
            Contact(name: "Jane Smith", phone: "+9876543210", image:"image"),
            Contact(name: "Peter Jones", phone: "+1239876543", image: "image"),
            Contact(name: "Abraham", phone: "+1234567890", image: "image"),
            Contact(name: "Sam Gray", phone: "+9876543210", image: "image"),
            Contact(name: "Ahmed Mohammed", phone: "+1239876543", image: "image"),
        ]
        
        var body: some View {
            NavigationView {
                List(contacts.sorted(by: {$0.name < $1.name})) { contact in
                    
                    ContactRow(contact: contact)
                }
                .navigationBarTitle("Contacts")
                .navigationBarItems(trailing:
                                        Button(action: {
                    
                }) {
                    Label("Add", systemImage: "plus.circle")
                }
                )
            }
        }
    }
    
    struct ContactRow: View {
        let contact: Contact
        
        var body: some View {
            HStack {
                
                Image(contact.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                
                
                VStack(alignment: .leading) {
                    Text(contact.name)
                        .font(.headline)
                    
                    Text(contact.phone)
                        .font(.subheadline)
                }
            }
            .listRowBackground(Color(hue: 0.5, saturation: 0.5, brightness: 0.8))
        }}
    
    
    struct ContentView: View {
        var body: some View {
            ContactsView()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
   
    

