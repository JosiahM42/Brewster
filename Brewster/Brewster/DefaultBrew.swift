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
    let brewingTime: Float
    //let equipment: [{}]
    
}

struct BrewingInstructions: Identifiable {
    let id = UUID()
    let brewingMethod: String
    let instructions: [String] = []
    let image: [String] = []
}

let BrewingMethodsList = [
    BrewingMethods(name: "Chemex", image:"chemex", description: "A drip coffee brewing method perfect for coffee lovers who prefer a richer tasting coffee with little to no post brewing mess.", brewingTime: 02.30),
    BrewingMethods(name: "Hario V60", image:"pourOver", description: "A pour over coffee brewing method perfect for introducing coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", brewingTime: 02.30),
    BrewingMethods(name: "AeroPress", image:"aeropress", description: "A pressurised coffee brewing method perfect for quick early morning coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", brewingTime: 02.30),
    BrewingMethods(name: "French Press", image:"frenchpress", description: "A pressurised coffee brewing method perfect for quick early morning coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", brewingTime: 02.30),
    BrewingMethods(name: "Moka Pot", image:"moka", description: "A pressurised coffee brewing method perfect for quick early morning coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", brewingTime: 02.30),
    BrewingMethods(name: "Cold Brew", image:"coldBrew", description: "A pressurised coffee brewing method perfect for quick early morning coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", brewingTime: 02.30),
]

/*let InstructionsList = [
    BrewingInstructions(brewingMethod: "Chemex", instructions: ["Step 1: Fill your kettle with water and bring it to a boil of roughly 95°C", "Step 2: Weigh out your desired coffee amount. For a quality tasting brew, 50 grams of coffee is recommended. ", "Step 3: Fold your filter paper in a cone shape and place it in your chemex, ensuring that the triple-fold side is facing the pouring filter.", "Step 4: Fully saturate the filter in hot water from the kettle to help remove the paper taste and warm the flask. Once done, discard the water.", "Step 5: Pour your coffee grounds into the filter and lightly shake to settle the coffee. This is to ensure for an even pour.", "Step 6: Start your timer and slowy pour water in a swirling motion, starting from the centre until the grounds have been submurged.", "Step 7: Allow the coffee to bloom for 40 seconds to improve extraction", "Step 8: Start pouring more water into the filter in a swirling motion until filter is half way full. Then allow the water to filtrate through the filter.", "Step 9: Repeat step 8 Three more times or until the timer ends.", "Step 10: Enjoy your coffee!"], image: ["Chemex-step-1", "Chemex-step-2", "Chemex-step-"])
]*/
