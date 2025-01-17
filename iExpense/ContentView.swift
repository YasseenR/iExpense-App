//
//  ContentView.swift
//  iExpense
//
//  Created by Yasseen Rouni on 9/13/24.
//

import SwiftUI


@Observable
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct ContentView: View {
    @State private var user = User()
    
    
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
