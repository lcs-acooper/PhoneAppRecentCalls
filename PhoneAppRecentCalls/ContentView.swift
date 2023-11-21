//
//  ContentView.swift
//  PhoneAppRecentCalls
//
//  Created by  Adam-James  Cooper on 2023-11-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "plus")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .bold()
                Spacer()
                Text("Favorites")
                    .bold()
                Spacer()
                Text("Edit")
                    .foregroundColor(.blue)
                    .bold()
            }
            .padding()
            //Moved spacer (Thanks Mr Gordon)
            //Added Rectangles to seperate the boxes
            Rectangle()
                .foregroundColor(.gray)
                .frame(height: 1)
            List {
                
                CallerFavorite(Name: "Jenn", Device: "Mobile")
                CallerFavorite(Name: "Jenn", Device: "Mobile")
            }
            //Type of list
            .listStyle(.plain)
            .border(.red, width: 4)
         
            Rectangle()
                .foregroundColor(.gray)
                .frame(height: 1)
        }
        
    }
}

#Preview {
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
            .tag(5)
        
    }
    
    //Accent changed
    .accentColor(.blue)
    //Prefered Colour Scheme
    .preferredColorScheme(.light)
}



