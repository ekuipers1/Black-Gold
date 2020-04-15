//
//  Cold.swift
//  Black Gold
//
//  Created by Erik Kuipers on 3/27/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct Cold: View {
    var cold: ColdDrinks
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(cold.image)
                .resizable()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
            )
            
            VStack(alignment: .leading, spacing: 12) {
                Text(cold.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorTealMedium"))
                    .lineLimit(1)
                
                Text(cold.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                ColdRatingView(cold: cold)
                ColdBeverageDetailView(cold: cold)
                
            }
            .padding(.leading, 16.0)
            .padding(12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            ColdDetail(cold: self.cold)
        }
            
        .frame(width: 400, height: 500, alignment: .top)
        
    }
}


struct Cold_Previews: PreviewProvider {
    static var previews: some View {
        Cold(cold: DataColdDrinks[0])
            .previewLayout(.sizeThatFits)
    }
}
