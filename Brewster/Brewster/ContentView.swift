//  ContentView.swift
//  Brewster
//
//  Created by Josiah Murray on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    
    var body: some View {

                   NavigationView{
                       
                       VStack{
                           Text("Brewing Methods")
                               .font(.title)
                               .multilineTextAlignment(.leading)
                               .padding(.bottom, 70.0)
                           
                           HStack(spacing: 70){
                               //VStack{
                                   
                                   Button(action: {
                                       print(BrewingMethodsList[0].name)
                                   }, label: {
                                       NavigationLink(destination: BrewView(isRootActive: self.$isActive, brewMethod: BrewingMethodsList[0]), isActive: self.$isActive){
                                              BrewingRow(brewMethod: BrewingMethodsList[0])
                                              
                                        }
                                       //.isDetailLink(false)
                                       
                                          //.padding(.leading, 120)
                                   })
                                   //.padding(.leading, 120)
                               
                                   Button(action: {
                                       print(BrewingMethodsList[1].name)
                                   }, label: {
                                          NavigationLink(destination: BrewView(isRootActive: self.$isActive, brewMethod: BrewingMethodsList[1]), isActive: self.$isActive){
                                              BrewingRow(brewMethod: BrewingMethodsList[1])
                                              
                                          }
                                          //.isDetailLink(false)
                                          //.padding(.trailing, 120)
                                   })
                                    //.padding(.trailing, 120)
                            
                               //}
                           }
                           .padding(.bottom, 20)
                           
                           
                           HStack(spacing: 70){
                               //VStack{
                                   
                                   Button(action: {
                                       print(BrewingMethodsList[2].name)
                                   }, label: {
                                          NavigationLink(destination: BrewView(isRootActive: self.$isActive, brewMethod: BrewingMethodsList[2]), isActive: self.$isActive){
                                              BrewingRow(brewMethod: BrewingMethodsList[2])
                                              
                                          }
                                          //.isDetailLink(false)
                                   })
                                   //.padding(.leading, 70)
                               
                                   Button(action: {
                                       print(BrewingMethodsList[3].name)
                                   }, label: {
                                          NavigationLink(destination: BrewView(isRootActive: self.$isActive, brewMethod: BrewingMethodsList[3]), isActive: self.$isActive){
                                              BrewingRow(brewMethod: BrewingMethodsList[3])
                                              
                                          }
                                          //.isDetailLink(false)
                                   })
                                    //.padding(.trailing, 70)
                            
                               //}
                           }
                           .padding(.top, 30)
                                                
                           Button(action: {
                               print(BrewingMethodsList[4].name)
                           }, label: {
                                  NavigationLink(destination: BrewView(isRootActive: self.$isActive, brewMethod: BrewingMethodsList[4]), isActive: self.$isActive){
                                      BrewingRow(brewMethod: BrewingMethodsList[4])
                                      
                                  }
                                  //.isDetailLink(false)
                           })
                               .padding(.top, 30.0)
                           
                       }
                       .padding(.bottom, 130.0)
                       //.padding(.horizontal)
                       .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                       .background(Color("Background"))
                   }
                   //.background(Color("Background"))
                   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                   .accentColor(.black)
                   
                    
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
        VStack{
            Group{
                Image(brewMethod.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 110, height: 100)
                    //.clipped()
                        
                Text(brewMethod.name)
                    .padding(.leading, 5.0)
                    .foregroundColor(.black)
            }
        }
    }
}

//struct RecipeRow: View {
    //let brewMethod: BrewingMethods
//}
