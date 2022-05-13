//
//  ContentView.swift
//  Brewster
//
//  Created by Josiah Murray on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

                //VStack(alignment: .leading){
                    //Text("Brewing Methods")
                        //.font(.title)
                    NavigationView{
                        VStack{
                            Text("Brewing Methods")
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 130.0)
                                .padding(.bottom, 25.0)
                                
                            HStack{
                                NavigationLink(destination: BrewView(brewMethod: BrewingMethodsList[0])){
                                    BrewingRow(brewMethod: BrewingMethodsList[0])
                                }
                                .padding(.horizontal)
                                NavigationLink(destination: BrewView(brewMethod: BrewingMethodsList[1])){
                                    BrewingRow(brewMethod: BrewingMethodsList[1])
                                }
                                .padding(.horizontal)
                                NavigationLink(destination: BrewView(brewMethod: BrewingMethodsList[2])){
                                    BrewingRow(brewMethod: BrewingMethodsList[2])
                                }.padding(.horizontal)
                            }
                            .padding(.bottom, 20.0)
                            HStack{
                                NavigationLink(destination: BrewView(brewMethod: BrewingMethodsList[3])){
                                    BrewingRow(brewMethod: BrewingMethodsList[3])
                                }
                                .padding(.horizontal)
                                NavigationLink(destination: BrewView(brewMethod: BrewingMethodsList[4])){
                                    BrewingRow(brewMethod: BrewingMethodsList[4])
                                }
                                .padding(.horizontal)
                                
                            }
                            .padding(.bottom, 500.0)
                            
                            Text("Coffee Recipes")
                                .font(.title)
                                .padding(.trailing, 150.0)
                                .padding(.top, -480.0)
                            Text("Coffee Recipes")
                                .font(.title)
                                .padding(.trailing, 130.0)
                                .padding(.top, -50.0)

                        }
            
                        //.padding(.bottom, 89.0)
                        
                    }
                    //.padding()
                    //.frame(height:200)
                    
                    //BrewingRow(brewMethod: BrewingMethodsList[0])
                   /* NavigationView{
                        List (BrewingMethodsList) { brewingMethod in
                            NavigationLink(destination: BrewView(brewMethod: brewingMethod)){
                                BrewingRow(brewMethod: brewingMethod)
                            }
                        
                        }
                        
                    } */
                    
                    
                //}
                //.padding(.top)
                //.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            
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

struct BrewingRow: View {
    let brewMethod: BrewingMethods
    var body: some View {
        HStack{
            VStack{
                Group{
                    
                    Button(action: {
                        print(brewMethod.name)
                    })
                    {
                        Image(brewMethod.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 65, height: 60)
                            .clipped()
                    }
                    Text(brewMethod.name)
                        .padding(.leading, 5.0)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

//struct RecipeRow: View {
    //let brewMethod: BrewingMethods
//}
