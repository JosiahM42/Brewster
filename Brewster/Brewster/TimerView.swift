//
//  TimerView.swift
//  Brewster
//
//  Created by Josiah Murray on 16/05/2022.
//

import Foundation
import SwiftUI

struct TimerView: View {
    let brewingMethod: BrewingMethods
    
    @State var remaining = 0
    @State private var swiftTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            Text("Brewing...")
                .padding(.bottom, 80)
                .padding(.trailing, 210)
                .font(.title)
            VStack{
                ZStack{
                    Circle()
                        .fill(Color.clear)
                        .overlay(Circle().stroke(Color("button"), lineWidth: 25))
                        .frame(width: 260, height: 260)
                        .padding(.bottom, 70.0 )
                    
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 260, height: 260)
                        .overlay(Circle().trim(from: 0, to: brewingProgress())
                                    .stroke(
                                        style: StrokeStyle(
                                            lineWidth: 25,
                                            lineCap: .butt,
                                            lineJoin: .round
                                            )
                                    )
                                    .foregroundColor((Color("timerUp")))
                                    .animation(.easeOut, value: 0.3)
                        )
                        .padding(.bottom, 70 )
                    BrewTimer(timeRemaining: remaining, brewingTime: brewingMethod.timeInSeconds)
                }
                
                
            }
            .onReceive(swiftTimer) { currentTime in
                if (self.remaining < brewingMethod.timeInSeconds) {
                    self.remaining = self.remaining + 1
                }
                else if (self.remaining == brewingMethod.timeInSeconds)
                {
                    
                }
            }
            
            HStack{
                Button(action: {
                   StartTimer()
                })
                {
                    Image("start")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .padding(.trailing)
                        .clipped()
                }
                .padding(.bottom, 80)
                
                Button(action: {
                    StopTimer()
                })
                {
                    Image("stopSquared")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 60)
                        .padding(.leading)
                        .clipped()
                }
                .padding(.bottom, 80)
            
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        
    }
    func brewingProgress() -> CGFloat {
        return (CGFloat(remaining) / CGFloat(brewingMethod.timeInSeconds))
    }
    func StopTimer() {
        swiftTimer.upstream.connect().cancel()
    }
    func StartTimer() {
        self.swiftTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    }
    
}

struct BrewTimer: View {
    var timeRemaining: Int
    var brewingTime: Int
    var body: some View {
        VStack{
            Text(brewTimeRemaining())
                .font(.system(size: 60))
                .font(.title)
                .padding(.bottom, 70)
        }
    }
    
    func brewTimeRemaining() -> String {
        let remaining = brewingTime - timeRemaining
        let brewInSeconds = remaining % 60
        let brewInMinutes =  Int(remaining/60)
        return "\(brewInMinutes):\(brewInSeconds < 10 ? "0" : "")\(brewInSeconds)"
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(brewingMethod: BrewingMethodsList[0])
    }
}
