//
//  BrewView.swift
//  Brewster
//
//  Created by Josiah Murray on 13/05/2022.
//

import Foundation
import SwiftUI

struct BrewView: View {
    @Binding var isRootActive: Bool
    
    let brewMethod: BrewingMethods
    var body: some View {
        //NavigationView{
            //VStack(alignment: .leading){
            VStack(spacing: 20){
                Text(brewMethod.name)
                    .font(.title)
                    //.padding(.top)
                Image(brewMethod.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipped()
                    .padding(.top, 18.0)
                Text("Description:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3)
                    .padding(.leading, 23.0)
                Text(brewMethod.description)
                    .padding(.horizontal, 26.0)
                /* HStack{
                    Group{
                        Text("Brewing Time: ")
                            //.frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading, 23.0)
                        Text(brewMethod.brewingTime)
                            //.frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3)
                            //.fontWeight(.bold)
                            .padding(.trailing, 140.0)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                */
                Text("Brewing Time: " + brewMethod.brewingTime)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3)
                    //.fontWeight(.bold)
                    .padding(.leading, 23.0)
                
                Text("Equipment:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3)
                    .padding(.leading, 23.0)
                //Divider()
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:20){
                        ForEach(0..<brewMethod.equipmentImages.count, id: \.self) { equipment in
                            VStack{
                                Group{
                                Image(brewMethod.equipmentImages[equipment])
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipped()
                                Text(brewMethod.equipment[equipment])
                                        .multilineTextAlignment(.center)
                                }
                            }
                            //.padding(.horizontal, 5.0)
                        }
                            
                    }
                    .padding(.top, 10)
                    
                }
                .padding(.leading, 10)
                //Divider()
                //let selectedMethod = InstructionsList.filter( $0.brewingMethod == brewMethod.name)
                
                Button(action: {
                    print("Changed Screen")
                } , label: {
                    NavigationLink(destination: InstructionView(isRootActive: self.$isRootActive, brewingMethod: brewMethod)) {
                        Text("Brew")
                            .padding(.horizontal, 40)
                            .padding(.vertical, 15)
                            .background(Color("button"))
                            .foregroundColor(.white)
                            //.border(.black, width: 2)
                            .font(.title)
                    }
                    .isDetailLink(false)
                })
                    .cornerRadius(4)
                    .padding(.top, 30.0)
                //.buttonStyle(.bordered)
                
            }
            .padding(.bottom, 80.0)
            .fixedSize(horizontal: false, vertical: true)
            .background(Color("Background"))
            //Spacer()
        //}
    }
}

//struct BrewView_Previews: PreviewProvider {
    //static var previews: some View {
        //BrewView(isRootActive: self.$isRootActive, brewMethod: BrewingMethodsList[0])
    //}
//}

