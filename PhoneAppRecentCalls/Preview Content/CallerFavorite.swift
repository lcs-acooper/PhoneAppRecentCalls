//
//  CallerFavorite.swift
//  PhoneAppRecentCalls
//
//  Created by  Adam-James  Cooper on 2023-11-11.
//

import SwiftUI

struct CallerFavorite: View {
    
    let Name: String
    let Device: String
    
    var body: some View {
        HStack {
            //Image
            Image("Person")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(50)
            VStack(alignment: .leading) {
                //Name
                Text(Name)
                    .bold()
                    .font(.title2)
                
                //Mobile
                HStack {
                    Image(systemName: "phone.fill")
                    
                    Text(Device)
                    
                }
                
                
            }
            Spacer()
            //SF Symbol of information
            Image(systemName: "info.circle")
                .foregroundStyle(.tint)
                .bold()
                .imageScale(.large)
                .padding()
        }
        .padding()
    }
}

#Preview {
    CallerFavorite(Name: "Jenn", Device: "Mobile")
}

