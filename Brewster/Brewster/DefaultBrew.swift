//
//  DefaultBrew.swift
//  Brewster
//
//  Created by Josiah Murray on 09/05/2022.
//

import SwiftUI
import Foundation

struct BrewingMethods: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    //let equipment: [{}]
    
}

struct BrewingInstructions: Identifiable {
    let id = UUID()
    let instructions: String
    let image: String
}

let BrewingMethodsList = [
    BrewingMethods(name: "Chemex", image:"chemex", description: "A drip coffee brewing method perfect for coffee lovers who prefer a richer tasting coffee with little to no post brewing mess.")
    //BrewingMethods(name: "Hario V60", image:"V60_img", description: "A pour over coffee brewing method perfect for introducing coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", brewingTime: 02.30)
    //BrewingMethods(name: "AeroPress", image:"AeroPress_img", description: "A pressurised coffee brewing method perfect for quick early morning coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", brewingTime: 02.30)]
]

