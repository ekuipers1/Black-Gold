//
//  HeaderModel.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/1/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
  var id = UUID()
  var image: String
  var headline: String
  var subheadline: String
}
