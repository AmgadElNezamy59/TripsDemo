//
//  ShapePath.swift
//  Trips Demo
//
//  Created by Amgad Salah on 13/12/2023.
//

import SwiftUI





struct FlightTicket: View {
    
   
    
    
    var body: some View {
        ZStack(alignment:.top){
            
            
            TicketShape()
                .frame(width: 350,height: 210)
                .cornerRadius(15)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 4)
            VStack{
                HStack{
                    Image(flightData1.airLineImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50,height: 50)
                        .cornerRadius(30)
                    
                    
                    Text(flightData1.airLineName)
                        .font(.title3)
                        .font(.custom("Pacifico-Regular", size: 32))
                    
                    
                    
                }.padding(5)
                
                HStack{
                    Text (flightData1.fromAirPort)
                    Spacer ()
                    Text (flightData1.takeTime)
                    Spacer ()
                    Text (flightData1.toAirPort)
                    
                    
                }//HStack
                .foregroundStyle(.gray)
                .italic()
                
                
                .foregroundColor(.black)
                .frame(width: 250)
                
                HStack{
                    
                    //Start point for time
                    
                    HStack{
                        Text(flightData1.ArrivalTime).bold()
                            .foregroundColor(.black)
                        ZStack{
                            Circle()
                                .frame(width: 12 ,height: 12 )
                                .foregroundColor(.yellow.opacity(0.5))
                                .blur(radius: 3)
                            Circle()
                                .frame(width: 5,height: 5)
                                .foregroundColor(.yellow.opacity(0.5))
                        }
                    }//HStaack
                    
                    //End point for time
                    
                    ZStack{
                        Path { path in
                            path.move(to: CGPoint(x: 0, y: 0))
                            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width,
                                                     y: 0))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 2 ,dash: [5]))
                        . frame(width: 185, height: 1)
                        .clipped()
                        .foregroundColor(.black)
                        Image(systemName: "airplane")
                            .font(.title3)
                            .foregroundColor(.gray)
                            .rotationEffect(Angle.radians(6.3),anchor: .center)
                        
                    }
                    
                    //Start point for time
                    
                    HStack{
                        
                        ZStack{
                            Circle()
                                .frame(width: 12 ,height: 12 )
                                .foregroundColor(.blue.opacity(0.5))
                                .blur(radius: 3)
                            Circle()
                                .frame(width: 5,height: 5)
                                .foregroundColor(.blue.opacity(0.5))
                            
                        }//ZStack
                        Text(flightData1.DepartTime).bold()
                            .foregroundColor(.black)
                    }//HStaack
                    
                    //End point for time
                    
                }
                .offset(y:-2)
                Path{ path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
                }
                
                .stroke(style: StrokeStyle(lineWidth: 2, dash: [10]))
                .frame(width: 335, height: 2)
                .foregroundColor (.lightG)
                .clipped()
                .offset(y:2)
                HStack{
                    VStack(alignment:.leading){
                        Text("Total Cost")
                            .foregroundStyle(.base)
                        Text("Including Taxes")
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                        
                        
                        
                    }.fontWeight(.thin)
                    
                    Spacer()
                    
                    VStack{
                        Text(flightData1.TotalCost + " SAR")
                            .fontWeight(.medium)
                            .foregroundStyle(.base)
                            .font(.system(size: 20))
                        
                        
                        
                        Text("🎁 Get 445 Point")
                            .foregroundStyle(.orange)
                            .fontWeight(.thin)
                            .font(.system(size: 12))
            
                    }
                    
                }//HStack
                .padding(.horizontal)
                .frame(width: 320)
                .italic()
                .offset(y:8)
                
            
            }//VStack
        }//ZStack
    }
    
}


#Preview {
    FlightTicket()
}










