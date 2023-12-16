//
//  FlightSearchView.swift
//  Trips Demo
//
//  Created by Amgad Salah on 13/12/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack{
            TabView {
                
                FlightSearch()
                    .tabItem {
                        Label("Flight", systemImage: "airplane")
                    }
                HotelSearch()
                    .tabItem {
                        Label("Hotel", systemImage: "house")
                    }
               
                
            }.accentColor(.base)
            
            
        }
        
        
        
    }
}

#Preview {
    TabBar()
}
