//
//  BeansStages.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/1/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct BeansStages: View {
    
      var beanStages: [Beansinfo] = beansData
      
      var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
          VStack {
            Spacer()
            HStack(alignment: .center, spacing: 25) {
              ForEach(beanStages) { item in
                BeansView(beandata: item)
              }
            }
            .padding(.vertical)
            .padding(.horizontal, 25)
            Spacer()
          }
        }
        .edgesIgnoringSafeArea(.all)
      }
    }

    struct RipeningStagesView_Previews: PreviewProvider {
      static var previews: some View {
        BeansStages(beanStages: beansData)
      }
    }

