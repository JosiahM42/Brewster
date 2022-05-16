//  ContentView.swift
//  Brewster
//
//  Created by Josiah Murray on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

                   NavigationView{
                       VStack{
                           Text("Brewing Methods")
                               .font(.title)
                               .multilineTextAlignment(.leading)
                                
                           List (BrewingMethodsList) { brewingMethod in
                            NavigationLink(destination: BrewView(brewMethod: brewingMethod)){
                                BrewingRow(brewMethod: brewingMethod)
                            }
                        
                           }
                           
                       }
                       //.padding(10)
                   }
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
        HStack{
            
            Image(brewMethod.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 60)
                .clipped()
                    
            Text(brewMethod.name)
                .padding(.leading, 5.0)
                .foregroundColor(.black)
                
            }
    }
}

//struct RecipeRow: View {
    //let brewMethod: BrewingMethods
//}
