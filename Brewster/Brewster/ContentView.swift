//
//  ContentView.swift
//  Brewster
//
//  Created by Josiah Murray on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

                VStack(alignment: .leading){
                    Text("Brewing Methods")
                        .font(.title)
                    
                    HStack{
                        VStack{
                            Group{
                                Button(action: {
                                    print("Chemex")
                                }) {
                                    Image("chemex")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 65, height: 60)
                                        .clipped()
                                    
                                }
                                
                                Text("Chemex")
                                    .padding(.leading, 5.0)
                            }
                        }
                        .padding()
                        
                        VStack{
                            Group{
                                Button(action: {
                                    print("Aeropress")
                                })
                                {
                                    Image("aeropress")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 65, height: 60)
                                        .clipped()

                                }
                                Text("AeroPress")
                                    .padding(.leading, 5.0)
                            }
                        }
                        .padding()
                        
                        VStack{
                            Group{
                                Button(action: {
                                    print("V60")
                                })
                                {
                                    Image("pourOver")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 65, height: 60)
                                        .clipped()

                                }
                                Text("Hario V60")
                                    .padding(.leading, 5.0)
                            }
                        }
                        .padding()
                    }
                    HStack {
                        VStack{
                            Group{
                                Button(action: {
                                    print("Moka Pot")
                                })
                                {
                                    Image("moka")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 65, height: 60)
                                        .clipped()
                                    
                                }
                                Text("Moka Pot")
                                    .padding(.leading, 5.0)
                            }
                        }
                        .padding()
                        
                        VStack{
                            Group{
                                Button(action: {
                                    print("French Press")
                                })
                                {
                                    Image("frenchpress")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 65, height: 60)
                                        .clipped()

                                }
                                Text("French Press")
                                    .padding(.leading, 5.0)
                                
                            }
                        }
                        .padding()

                        VStack{
                            Group{
                                Button(action: {
                                    print("Cold Brew")
                                })
                                {
                                    Image("coldBrew")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 65, height: 60)
                                        .clipped()
                                    
                                }
                                Text("Cold Brew")
                                    .padding(.leading, 5.0)
                                
                            }
                        }
                    }
                    
                    Text("Coffee Recipes")
                        .font(.title)
                        .padding(.top)
                }
                .padding(.top)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

