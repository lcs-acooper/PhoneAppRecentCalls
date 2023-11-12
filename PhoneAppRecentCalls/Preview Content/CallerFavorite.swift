//
//  CallerFavorite.swift
//  PhoneAppRecentCalls
//
//  Created by  Adam-James  Cooper on 2023-11-11.
//

import SwiftUI

struct CallerFavorite: View {
    
    let Name: String

    
    var body: some View {
        HStack {
            //Image
            Image("Person")
            VStack {
                //Name
                Text(Name)
                //Mobile
                Text("Mobile")
            }
            //SF Symbol of information
            Image("info.circle")
        }
    }
}

#Preview {
    CallerFavorite(Name: "Jenn")
}
