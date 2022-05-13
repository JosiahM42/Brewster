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
    let equipment: [String]
    let brewingTime: Float
    
}

struct BrewingInstructions: Identifiable {
    let id = UUID()
    let brewingMethod: String
    let instructions: [String]
    //let image: [String]
}

let BrewingMethodsList = [
    BrewingMethods(name: "Chemex", image:"chemex", description: "A drip coffee brewing method perfect for coffee lovers who prefer a richer tasting coffee with little to no post brewing mess.", equipment: ["Chemex Carafe", "Chemex Filters", "Kettle", "Coffee"], brewingTime: 4.00),
    BrewingMethods(name: "Hario V60", image:"pourOver", description: "A pour over coffee brewing method perfect for introducing coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", equipment: ["Pour over dripper", "Coffee Filter Paper", "Kettle", "Coffee", "Cup/Jug"], brewingTime: 3.00),
    BrewingMethods(name: "AeroPress", image:"aeropress", description: "A pressurised coffee brewing method perfect for quick early morning coffee lovers to speciality brewing, and for people who prefer a richer tasting coffee with little to no preperation time. ", equipment: ["Pour over dripper", "Coffee Filter Paper", "Kettle", "Coffee", "Cup/Jug"], brewingTime: 1.30),
    BrewingMethods(name: "French Press", image:"frenchpress", description: "An immersion coffee brewing method perfect for coffee lovers that prefer a stronger tasting brew and want to experience brewing a great tasting coffee with little to no set up. ", equipment: ["French Press", "Kettle", "Spoon", "Coffee Measuring Spoon", "Coffee", "Cup/Jug",], brewingTime: 4.00),
    BrewingMethods(name: "Moka Pot", image:"moka", description: "A pressure based coffee brewing method that takes a little skill to use but produces a flavourful espresso like coffee.", equipment: ["Moka pot", "Kettle", "Coffee Measuring Spoon", "Coffee", "Cup/Jug"], brewingTime: 4.00)
]

let InstructionsList = [
    BrewingInstructions(brewingMethod: "Chemex", instructions: ["Fill your kettle with water and bring it to a boil of roughly 95°C", "Weigh out your desired coffee amount. For a quality tasting brew, 50 grams of coffee is recommended.", "Fold your filter paper in a cone shape and place it in your Chemex, ensuring that the triple-fold side is facing the flask’s pouring spout.", "Fully saturate the filter in hot water from the kettle to help remove the paper taste and warm the flask. Once done, discard the water.", "Pour your coffee grounds into the filter and lightly shake to settle the coffee. This is to ensure an even pour.", "Start your timer and slowly pour water in a swirling motion, starting from the centre until the grounds have been submerged.", "Allow the coffee to bloom for 40 seconds to improve extraction.", "Start pouring more water into the filter in a swirling motion until filter is half way full. Then allow the water to filtrate through the filter.", "Repeat step 8 Three more times or until the timer ends.", "Enjoy your coffee!"]),
    BrewingInstructions(brewingMethod: "Hario V60", instructions: ["Fill your kettle with water and bring it to a boil of roughly 95°C.", "Unfold your filter paper and flatten the creased side. Then place the filter into your dripper and place the dripper on either your mug or jug.", "Lightly saturate the filter with water and then dispose of the excess water.", "Fill your coffee measuring spoon with your desired ground coffee and pour it into the filter. Then gently tap the dripper to even out the grounds.", "Start the timer and lightly saturate the coffee grounds in a swirling motion starting from the rim of the filter to the centre. Once the coffee grounds are submerged, allow the water drip through the filter. This process is called the bloom.", "Once the water has filtered through, start gently pouring water in a spiral motion starting from the rim to the centre. Stop pouring once the water and grounds have reached the top of the filter. Then allow the water to drip through the filter for 45-65 seconds.", "Once the water has nearly filtered through start pouring more water in a spiral motion and stop once it has reached the top of the filter.", "Repeat the pouring process two more times.", "Once the water has finished filtering, remove the dripper and enjoy your coffee."]),
    BrewingInstructions(brewingMethod: "AeroPress", instructions: ["Fill your kettle with water and bring it to a boil.", "Insert the filter paper into the AeroPress’s plastic cap and lightly saturate the cap over your jug or mug.", "Measure roughly 15 grams of coffee.", "Assemble your AeroPress and place it on top of your scale.", "Pour the ground coffee into the top of the AeroPress.", "Start your timer and pour 30 grams of water into the AeroPress to evenly saturate your coffee grounds. If the grounds are not evenly distributed then, tamper the grounds with a spoon. Then let the grounds to sit for 30 seconds.", "Fill the remaining AeroPress chamber with water and leave for a minute.", "Once a minute has passed, gently stir the grounds 10 times.", "Tightly screw on the plastic cap and flip the AeroPress over and place it on top of your jug or mug.", "Slowly press the top of the AeroPress to plunge the coffee into the brewing device.", "Unscrew the cap and push the coffee puck out. Then enjoy your coffee."]),
    BrewingInstructions(brewingMethod: "French Press", instructions: ["Fill your kettle with enough water to fill your French Press and bring it to a boil of roughly 95°C.", "Fill your coffee measuring spoon with your desired ground coffee and pour it into your French Press.", "Slowly pour the water into the beaker, ensuring that enough water to saturate your grounds", "Saturate your coffee grounds with the boiling water so that there is at least twice the amount of water to coffee.", "Stir the coffee grounds with your spoon and start the 30 second timer to allow the coffee to bloom.", "Pour the remaining water into the beaker and gently place the lid on top of the grounds without plunging. Then start the 4 minute timer.", "Now gently press the filter down, ensuring that the filter is going down at a steady rate.", "Enjoy your coffee! "]),
    BrewingInstructions(brewingMethod: "Moka Pot", instructions: ["Fill your kettle with water and bring it to a boil.", "Fill the bottom portion of the Moka pot with water until it has reached the valve on the side of the pot. Then insert the funnel into the pot and dispose of any excess water that has seeped through.", "Fill your coffee measuring spoon with your desired ground coffee and pour it into the funnel.", "Screw the top portion of the Moka pot on tightly and place the pot on a stove over a medium flame.", "During the brewing process the heat will create pressure pushing steam out through the top chamber. Once brewing process has completed, you will hear a hissing sound. At this point quickly remove the pot from the stove and allow the coffee to finish filling the top chamber.", "Enjoy your coffee!"]),
]


/*let InstructionsList = [
    BrewingInstructions(brewingMethod: "Chemex", instructions: ["Step 1: Fill your kettle with water and bring it to a boil of roughly 95°C", "Step 2: Weigh out your desired coffee amount. For a quality tasting brew, 50 grams of coffee is recommended. ", "Step 3: Fold your filter paper in a cone shape and place it in your chemex, ensuring that the triple-fold side is facing the pouring filter.", "Step 4: Fully saturate the filter in hot water from the kettle to help remove the paper taste and warm the flask. Once done, discard the water.", "Step 5: Pour your coffee grounds into the filter and lightly shake to settle the coffee. This is to ensure for an even pour.", "Step 6: Start your timer and slowy pour water in a swirling motion, starting from the centre until the grounds have been submurged.", "Step 7: Allow the coffee to bloom for 40 seconds to improve extraction", "Step 8: Start pouring more water into the filter in a swirling motion until filter is half way full. Then allow the water to filtrate through the filter.", "Step 9: Repeat step 8 Three more times or until the timer ends.", "Step 10: Enjoy your coffee!"], image: ["Chemex-step-1", "Chemex-step-2", "Chemex-step-"])
]*/
