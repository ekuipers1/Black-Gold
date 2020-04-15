//
//  ColdDrinksModel.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/7/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

// MARK: - WarmDrink MODEL

struct ColdDrinks: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var rating: Int
  var calories: Int
  var caffeine: Int
  var gramsofprotein: Int
  var instructions: [String]
  var ingredients: [String]
}