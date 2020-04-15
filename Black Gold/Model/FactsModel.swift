//
//  FactsModel.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/2/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}
