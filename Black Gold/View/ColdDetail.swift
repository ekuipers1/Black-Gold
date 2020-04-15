//
//  ColdDetail.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/7/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct ColdDetail: View {
     var cold: ColdDrinks
      
      @State private var pulsate: Bool = false
      @Environment(\.presentationMode) var presentationMode
      
      var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 0) {
            // IMAGE
            Image(cold.image)
              .resizable()
              .scaledToFit()
            
            Group {
              // TITLE
              Text(cold.title)
                .font(.system(.largeTitle, design: .serif))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("ColorTealAdaptive"))
                .padding(.top, 10)
              
              // RATING
              ColdRatingView(cold: cold)
              
              // COOKING
              ColdBeverageDetailView(cold: cold)
              
              // INGREDIENTS
              Text("Ingredients")
                .fontWeight(.bold)
                .modifier(TitleModifier())
              
              VStack(alignment: .leading, spacing: 5) {
                ForEach(cold.ingredients, id: \.self) { item in
                  VStack(alignment: .leading, spacing: 5) {
                    Text(item)
                      .font(.footnote)
                      .multilineTextAlignment(.leading)
                    Divider()
                  }
                }
              }
              
              // INSTRUCTIONS
              
              Text("Instructions")
                .fontWeight(.bold)
                .modifier(TitleModifier())
              
              ForEach(cold.instructions, id: \.self) { item in
                VStack(alignment: .center, spacing: 5) {
                  Image(systemName: "chevron.down.circle")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                    .foregroundColor(Color("ColorTealAdaptive"))
                  
                  Text(item)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .font(.system(.body, design: .serif))
                    .frame(minHeight: 100)
                }
              }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
          }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
          HStack {
            Spacer()
            VStack {
              Button(action: {
                // ACTION
                self.presentationMode.wrappedValue.dismiss()
              }, label: {
                Image(systemName: "chevron.down.circle.fill")
                  .font(.title)
                  .foregroundColor(Color.white)
                  .shadow(radius: 4)
                  .opacity(self.pulsate ? 1 : 0.6)
                  .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                  .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
              })
                .padding(.trailing, 20)
                .padding(.top, 24)
              Spacer()
            }
          }
        )
        .onAppear() {
          self.pulsate.toggle()
        }
      }
    }


struct ColdDetail_Previews: PreviewProvider {
    static var previews: some View {
        ColdDetail(cold: DataColdDrinks[0])
    }
}
