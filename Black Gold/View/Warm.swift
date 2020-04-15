//
//  Warm.swift
//  Black Gold
//
//  Created by Erik Kuipers on 3/27/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct Warm: View {
    
    var warm: WarmDrinks
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(warm.image)
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
                Text(warm.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorTealMedium"))
                    .lineLimit(1)
                Text(warm.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                WarmRatingsView(warm: warm)
                WarmBeverageDetailView(warm: warm)
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
            WarmDetail(warm: self.warm)
        }
            
        .frame(width: 400, height: 500, alignment: .top)
        
        
    }
}

struct Warm_Previews: PreviewProvider {
    static var previews: some View {
        Warm(warm: DataWarmDrinks[0])
            .previewLayout(.sizeThatFits)
    }
}
