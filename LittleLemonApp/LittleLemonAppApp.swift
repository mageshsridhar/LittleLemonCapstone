//
//  LittleLemonAppApp.swift
//  LittleLemonApp
//
//  Created by Sridhar, Magesh on 7/20/23.
//

import SwiftUI

@main
struct LittleLemonAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Onboarding()
        }
    }
}
