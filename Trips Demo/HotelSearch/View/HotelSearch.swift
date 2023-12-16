//
//  HotelSearch.swift
//  Trips Demo
//
//  Created by Amgad Salah on 15/12/2023.
//

import SwiftUI

struct HotelSearch: View {
    var body: some View {
        
        
        ZStack{
            NavigationStack{
                
                ScrollView{
                    VStack{
                        VStack{
                            ForEach(0..<5) { hotel in
                                
                                Hotel()
                                    
                            }
                        }
                        
                    }.padding(30)
                }.navigationTitle("")
                    .toolbarBackground(Color.base, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Edit") {
                                print("Edit the Flight Search !!")
                                
                            }.foregroundColor(.white)
                        }
                    }
            }
        }
    }
}


#Preview {
    HotelSearch()
}
