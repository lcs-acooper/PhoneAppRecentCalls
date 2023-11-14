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
                        .foregroundStyle(.gray)
                    Text(Device)
                        .foregroundStyle(.gray)
                }
                
                
            }
            
            //SF Symbol of information
            Image(systemName: "info.circle")
                .foregroundStyle(.tint)
                .bold()
                .imageScale(.large)
                .padding()
            
        }
        .frame(height: 25)
        .padding()
        Rectangle()
            .frame(width: 250, height: 1)
            .foregroundStyle(.gray)
    }
    
}

#Preview {
    CallerFavorite(Name: "Jenn", Device: "Mobile")
}

