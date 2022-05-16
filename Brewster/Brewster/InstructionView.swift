//
//  InstructionView.swift
//  Brewster
//
//  Created by Josiah Murray on 16/05/2022.
//

import SwiftUI


struct InstructionView: View {
    let brewingMethod: BrewingMethods
    //let brewingInstructions: BrewingInstructions
    var body: some View {
        //NavigationView{
        ZStack{
            ScrollView{
                VStack(spacing: 20){
                    Text("Instructions")
                        .font(.title2)
                        .padding(.top, -40)
                    //Text(brewingMethod.name)
                    
                    ForEach(InstructionsList.filter {$0.brewingMethod == brewingMethod.name}) { method in
                        
                        ForEach(0..<method.instructions.count) { step in
                            Text("Step \(step+1): ")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title3)
                                //.fontWeight(.bold)
                                .padding(.leading, 23.0)
                            Text(method.instructions[step])
                                .padding(.horizontal, 26.0)
                                .multilineTextAlignment(.leading)
                        }
                        
                    }
                    
                }
                .padding(.bottom, 130.0)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .fixedSize(horizontal: false, vertical: true)
            //}
            }
            
            Button(action: {
                print("Changed Screen")
            } , label: {
                NavigationLink(destination: TimerView(brewingMethod: brewingMethod)) {
                    Text("Start Timer")
                        //.padding()
                        //.background(Color.purple)
                        //.foregroundColor(.white)
                        //.font(.title)
                        .padding()
                        .background(Color("button"))
                        .foregroundColor(.white)
                        //.border(.black, width: 2)
                        .font(.title)
                }
            })
                //.background(.purple)
                //.foregroundColor(.white)
                .cornerRadius(4)
                .padding(.top, 570)
                
                
        }
    }
}

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView(brewingMethod: BrewingMethodsList[0])
    }
}

