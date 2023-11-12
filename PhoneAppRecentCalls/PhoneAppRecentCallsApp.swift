//
//  PhoneAppRecentCallsApp.swift
//  PhoneAppRecentCalls
//
//  Created by  Adam-James  Cooper on 2023-11-11.
//

import SwiftUI

@main
struct StopWatchReproductionApp: App {
    var body: some Scene {
        WindowGroup {
            TabView(selection: Binding.constant(1)) {
                
                ContentView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Favorites")
                    }
                    .tag(1)
                
                Text("Recents")
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("Recents")
                    }
                    .tag(2)
               Text("Contacts")
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Contacts")
                    }
                    .tag(3)
                Text("KeyPad")
                    .tabItem {
                        Image(systemName: "circle.grid.3x3.fill")
                        Text("Keypad")
                    }
                    .tag(4)
                Text("Voicemail")
                    .tabItem {
                        Image(systemName: "recordingtape")
                        Text("Voicemail")
                    }
                
                
            }
            
            //Accent changed
            .accentColor(.blue)
            //Prefered Colour Scheme
            .preferredColorScheme(.light)
        }
    }
}
