//
//  UserProfile.swift
//  LittleLemonApp
//
//  Created by Sridhar, Magesh on 7/20/23.
//

import SwiftUI

struct UserProfile: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack {
            Text("Personal Information")
            Image("profile-image-placeholder")
            Text(UserDefaults.standard.string(forKey: "firstNameKey") ?? "")
            Text(UserDefaults.standard.string(forKey: "lastNameKey") ?? "")
            Text(UserDefaults.standard.string(forKey: "emailKey") ?? "")
            Button("Logout") {
                UserDefaults.standard.set(false, forKey: "kIsLoggedIn")
                self.presentation.wrappedValue.dismiss()
            }
            Spacer()
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
