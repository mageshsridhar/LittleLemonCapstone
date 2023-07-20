//
//  Onboarding.swift
//  LittleLemonApp
//
//  Created by Sridhar, Magesh on 7/20/23.
//

import SwiftUI

struct Onboarding: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var isLoggedIn = false
    let kIsLoggedIn = "kIsLoggedIn"
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Home(), isActive: $isLoggedIn) {
                    EmptyView()
                }
                TextField("First Name", text: $firstName).textFieldStyle(.roundedBorder)
                TextField("Last Name", text: $lastName).textFieldStyle(.roundedBorder)
                TextField("Email", text: $email).textFieldStyle(.roundedBorder)
                Button("Register") {
                    if !firstName.isEmpty, !lastName.isEmpty, !email.isEmpty {
                        UserDefaults.standard.set(firstName, forKey: "firstNameKey")
                        UserDefaults.standard.set(lastName, forKey: "lastNameKey")
                        UserDefaults.standard.set(email, forKey: "emailKey")
                        isLoggedIn = true
                        UserDefaults.standard.set(isLoggedIn, forKey: kIsLoggedIn)
                    }
                    
                }
                    .buttonStyle(.borderedProminent)
            }.padding()
                .onAppear {
                    self.isLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
                }
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
