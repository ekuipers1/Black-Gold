//
//  MapModel.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/8/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

// MARK: - FACT MODEL

struct WorldFact: Identifiable {
  var id = UUID()
  var headline: String
  var image: String
  var content: String
}
