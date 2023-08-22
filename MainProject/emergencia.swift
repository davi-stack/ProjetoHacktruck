//
//  emergencia.swift
//  MainProject
//
//  Created by Student09 on 21/08/23.
//

import Foundation
import SwiftUI

struct emergencia: View {
    var body: some View {
        NavigationStack{
            Text("Emergencia")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
            HStack(){
                Spacer()
                VStack{
                    Spacer()
                    HStack{
                        VStack{
                            Image("ContatoEmergencia")
                                .resizable()
                                .scaledToFit()
                                .padding(30.00)
                            Text("Contato de Emergencia")
                                .font(.callout)
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                        }                          .background(.white)
                            .cornerRadius(30.00)
                        Spacer()

                        VStack{
                            Image("Meditacao")
                                .resizable()
                                .scaledToFit()
                                .padding(30.00)
                            Text(" ")
                            Text("Meditacao")
                                .font(.callout)
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                            
                        }
                        .background(.white)
                        .cornerRadius(30.00)

                    }
                    Spacer()
                    
                    HStack{
                        VStack{
                            Image("RuidoBranco")
                                .resizable()
                                .scaledToFit()
                                .padding(20.00)
                            Text(" ")
                            Text("Ruido Branco")
                                .font(.callout)
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                        }
                        .background(.white)
                        .cornerRadius(30.00)
                       
                        Spacer()

                        
                        VStack{
                            Image("AutoAjuda")
                                .resizable()
                                .scaledToFit()
                                .padding(30.00)
                            Text("Auto Ajuda")
                                .font(.callout)
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                            
                        }
                        .background(.white)
                        .cornerRadius(30.00)

                    }
                    Spacer()
                }
                
            }
            .padding()
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(.blue)
            
        }

    }
}

struct emergencia_Previews: PreviewProvider {
    static var previews: some View {
        emergencia()
    }
}
