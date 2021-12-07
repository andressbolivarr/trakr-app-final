//
//  TrakrApp.swift
//  Trakr
//
//  Created by Andres Bolivar on 12/4/21.
//

import SwiftUI

@main
struct TrakrApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
            NavigationView{
                ContentView(location: Locations().primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover!")
            }
        } 
    }
}
}
