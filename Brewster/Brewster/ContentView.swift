//
//  ContentView.swift
//  Brewster
//
//  Created by Josiah Murray on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Brewing Methods")
            .font(.title2)
            .padding(.top)
            .multilineTextAlignment(.center)
        /*https://icons8.com/icons/authors/RsIdElNdRw1Z/chattapat-./external-filled-outline-02-chattapat-/external-coffee-shop-filled-outline-02-chattapat-*/
        VStack{
            HStack{
                Button(action: {
                    print("Chemex")
                }) {
                    Image("chemex")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .clipped()
                        //.cornerRadius(50)
                }
                .padding()
                
                /*VStack {
                    Text("Chemex")
                        .font(.system(size: 18, weight:.medium, design: .default))
                }*/
                
                Button(action: {
                    print("Aeropress")
                })
                {
                    Image("aeropress")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .clipped()
                        //.cornerRadius(50)
                    /*VStack {
                        Text("AeroPress")
                            .font(.system(size: 18, weight:.medium, design: .default))
                    }*/
                }
                .padding()
                
                Button(action: {
                    print("V60")
                })
                {
                    Image("pourOver")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .clipped()
                        //.cornerRadius(50)
                    /*VStack {
                        Text("AeroPress")
                            .font(.system(size: 18, weight:.medium, design: .default))
                    }*/
                }
                .padding()
                
            }
            HStack {
                Button(action: {
                    print("Moka Pot")
                })
                {
                    Image("moka")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .clipped()
                        //.cornerRadius(50)
                    /*VStack {
                        Text("AeroPress")
                            .font(.system(size: 18, weight:.medium, design: .default))
                    }*/
                    
                }
                .padding()
                
                Button(action: {
                    print("French Press")
                })
                {
                    Image("frenchpress")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .clipped()
                        //.cornerRadius(50)
                    /*VStack {
                        Text("AeroPress")
                            .font(.system(size: 18, weight:.medium, design: .default))
                    }*/
                }
                .padding()
                .accessibilityLabel(/*@START_MENU_TOKEN@*/"French Press"/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                    print("Cold Brew")
                })
                {
                    Image("coldBrew")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .clipped()
                        //.cornerRadius(50)
                    /*VStack {
                        Text("AeroPress")
                            .font(.system(size: 18, weight:.medium, design: .default))
                    }*/
                }
                .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

