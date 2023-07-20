//
//  Home.swift
//  LittleLemonApp
//
//  Created by Sridhar, Magesh on 7/20/23.
//

import SwiftUI

struct Home: View {
    let persistence = PersistenceController.shared
    var body: some View {
        TabView {
            Menu().tabItem({
                Label("Menu", systemImage: "list.dash")
            }).environment(\.managedObjectContext, persistence.container.viewContext)
            UserProfile().tabItem({
                Label("Profile", systemImage: "square.and.pencil")
            })
        }.navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
