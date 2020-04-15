//
//  WarmData.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/1/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

let DataWarmDrinks: [WarmDrinks] = [
    WarmDrinks(
        title: "Espresso",
        headline: "A smooth Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything",
        image: "Coffee-1",
        rating: 5,
        calories: 5,
        caffeine: 150,
        gramsofprotein: 0,
        instructions: [
            "The weight of the liquid espresso should be somewhere between one and three times the weight of the dry coffee.",
            "The most common brew ratio to start with is two times the dry coffee dose.",
            "This means that if you started with 18 grams of dry coffee, you would end with 36 grams of liquid espresso in your cup."
        ],
        ingredients: [
            "Ground coffee beans",
            "Nearly boiling water",
            "A small Espresso cup too serve"
        ]
    ),
    WarmDrinks(
        title: "Cappuccino",
        headline: "Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam. An alchemy of barista artistry and craft.",
        image: "Coffee-2",
        rating: 5,
        calories: 120,
        caffeine: 150,
        gramsofprotein: 5,
        instructions: [
            "Pull a double shot of espresso into a cappuccino cup.",
            "Foam the milk to double its original volume.",
            "Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known."
        ],
        ingredients: [
            "Milk foam",
            "Steamed Milk",
            "Espresso Coffee"
        ]
    ),
    WarmDrinks(
        title: "Caffe Americano",
        headline: "An Americano is two ingredients: espresso and hot water. ",
        image: "Coffee-3",
        rating: 4,
        calories: 15,
        caffeine: 225,
        gramsofprotein: 25,
        instructions: [
            "Pull a double shot of espresso into a cappuccino cup.",
            "Pour about 3oz or so of hot water into the mug you plan to drink from.",
            "Pour the espresso shot into the mug."
        ],
        ingredients: [
            "Espresso Coffee",
            "About 3oz of nearly boiling water"
        ]
    ),
    WarmDrinks(
        title: "Latte Macchiato",
        headline: "A dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk-forward warm-up.",
        image: "Coffee-4",
        rating: 5,
        calories: 190,
        caffeine: 150,
        gramsofprotein: 13,
        instructions: [
            "Prepare the espresso in a small cup or pour pitcher.",
            "Foam the milk in a steaming pitcher, and pour it into a decorative glass.",
            "Add the espresso to the glass"
        ],
        ingredients: [
            "3 large avocados,",
            "1/3 cup plus 2 tsp whole milk (90 ml)"
        ]
    ),
    WarmDrinks(
        title: "Caffe Mocha",
        headline: "Chocolate and espresso meet for the ultimate indulgence. Rich espresso and house-made chocolate sauce rendezvous with creamy steamed milk under a blanket of fresh whipped cream.",
        image: "Coffee-6",
        rating: 4,
        calories: 360,
        caffeine: 175,
        gramsofprotein: 13,
        instructions: [
            "Brew an espresso into a mug, cup or glass.",
            "Add two teaspoons of hot chocolate mix or cocoa powder and mix with the espresso.",
            "Foam and texture the required quantity of milk, ensuring we have a good quality foam.",
            "Add the milk to the cup containing the chocolate espresso and top with whipped cream.",
            "Dust with more cocoa powder before serving."
        ],
        ingredients: [
            "Espresso",
            "Chocolate",
            "Steamed Mild",
            "Milk Foam",
            "Whipped Cream"
        ]
    )
]
