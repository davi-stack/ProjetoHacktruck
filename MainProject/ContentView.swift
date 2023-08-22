//
//  ContentView.swift
//  MainProject
//
//  Created by Student09 on 21/08/23.
//

import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Odelmo")
                }
                
                .frame(maxWidth: .infinity)
                .background(.white)
                VStack(spacing: 40){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 1)
                            .frame(height: .infinity, alignment: .center)
                            .background(.white)
                        NavigationLink(destination : exemplo() ){
                            VStack{
                                Text("Diario").font(.title2)
                            }
                            .frame(
                                maxWidth: 260,
                                maxHeight: .infinity,
                                alignment: .center
                            )
                            .background(.green)
                            .hoverEffect(.lift)
                            Spacer()
                        }
                    }.cornerRadius(15)
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 1)
                            .frame(height: .infinity, alignment: .center)
                            .background(.white)
                        NavigationLink(destination : exemplo() ){
                            VStack{
                                Text("Estatisticas").font(.title2)
                            }
                            .frame(
                                maxWidth: 260,
                                maxHeight: .infinity,
                                alignment: .center
                            )
                            .background(.purple)
                            .hoverEffect(.lift)
                            Spacer()
                        }
                    }.cornerRadius(15)
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 1)
                            .frame(height: .infinity, alignment: .center)
                            .background(.white)
                        NavigationLink(destination : exemplo() ){
                            VStack{
                                Text("desafios").font(.title2)
                            }
                            .frame(
                                maxWidth: 260,
                                maxHeight: .infinity,
                                alignment: .center
                            )
                            .background(.orange)
                            .hoverEffect(.lift)
                            Spacer()
                        }
                    }.cornerRadius(15)
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 1)
                            .frame(height: .infinity, alignment: .center)
                            .background(.white)
                        NavigationLink(destination : emergencia() ){
                            VStack{
                                Text("Emergência").font(.title2)
                            }
                            .frame(
                                maxWidth: 260,
                                maxHeight: .infinity,
                                alignment: .center
                            )
                            .background(.red)
                            .hoverEffect(.lift)
                            Spacer()
                        }
                    }.cornerRadius(15)
                }
                .padding()
            }
            .tint(.white)
            .frame(maxWidth: .infinity , maxHeight: .infinity)
            .background(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
