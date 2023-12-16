//
//  FlightSearch.swift
//  Trips Demo
//
//  Created by Amgad Salah on 15/12/2023.
//

import SwiftUI

struct FlightSearch: View {
    
    //Just A Dummy Data For Test
    
   
    var body: some View {
        

        ZStack{
            
            
            NavigationStack{
                
                ScrollView{
                    VStack{
                        VStack{
                            // the number of flights will be depend on the matching search that coming from api and added to an array 
                            //
                            ForEach(0..<5) { hotel in
                                
                                FlightTicket()
                                    .padding(15)
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
    FlightSearch()
}
