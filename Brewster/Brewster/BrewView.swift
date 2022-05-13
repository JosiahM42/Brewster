//
//  BrewView.swift
//  Brewster
//
//  Created by Josiah Murray on 13/05/2022.
//

import SwiftUI

struct BrewView: View {
    let brewMethod: BrewingMethods
    var body: some View {
        VStack(alignment: .leading){
            Text(brewMethod.name)
                .font(.title)
            Image(brewMethod.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .clipped()
                //.cornerRadius(50)
        }
    }
}

struct BrewView_Previews: PreviewProvider {
    static var previews: some View {
        BrewView(brewMethod: BrewingMethodsList[0])
    }
}
