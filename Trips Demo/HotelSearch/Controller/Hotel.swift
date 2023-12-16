//
//  Hotel.swift
//  Trips Demo
//
//  Created by Amgad Salah on 13/12/2023.
//

import SwiftUI

struct Hotel: View {
    @State var midY :CGFloat = 0
    var body: some View {
        
        ZStack{
            
            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
                    ZStack(alignment: .trailing){
                        
                        HStack(){
                            Image("hotel")
                                .resizable()
                            //  the height of the image to a 2.4 of the screen width
                                .frame (height: UIScreen.main.bounds.width / 2.6)
                            // set the width of the image to a 1.04 of the screen width
                                .frame(width: UIScreen.main.bounds.width / 1.045)
                                .cornerRadius(20)
                        }
                      
                        HStack(){
                            
                            Color(Color.white)
                            
                        }.frame (height: UIScreen.main.bounds.width / 1.9)
                        
                            .frame(width: UIScreen.main.bounds.width / 1.7)
                            .cornerRadius(20)
                        // clip the view with a custom shape that takes a midY parameter
                            .clipShape(HalfCircleShape(midY: midY))
                            .scaleEffect(x: -1, y: 1, anchor: .center)
                            .shadow(color: .gray, radius: 5)
                            .padding(.vertical)

                        ZStack(alignment: .center){
                            VStack{
                                Text("Hotel Demo")
                                    .fontWeight(.bold)
                                    .font(.system(size: 25))
                                    .shadow(color: .gray, radius: 2)
                                
                            }
                        }.frame (height: UIScreen.main.bounds.width / 1.7)
                            .frame(width: UIScreen.main.bounds.width / 1.7)
                    
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}


#Preview {
    Hotel()
}





