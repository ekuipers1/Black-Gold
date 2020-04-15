//
//  CoffeeFacts.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/2/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct CoffeeFacts: View {
    // MARK: - PROPERTIES
    
    var fact: Fact
    
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorTealMedium"), Color("ColorTealLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(Color.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius:12))
                .background(
                    RoundedRectangle(cornerRadius:12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorTealMedium")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorTealAdaptive"), radius: 6, x: 0, y: 6)
                        .frame(width: 74, height: 74, alignment: .center)
            )
                .background(
                    RoundedRectangle(cornerRadius:12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorTealLight")]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 82, height: 82, alignment: .center)
            )
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
            )
                .offset(x: -150)
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeFacts(fact: factsData[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}

