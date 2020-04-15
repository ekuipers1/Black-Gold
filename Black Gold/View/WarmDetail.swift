//
//  WarmDetail.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/2/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct WarmDetail: View {
    
      var warm: WarmDrinks
      
      @State private var pulsate: Bool = false
      @Environment(\.presentationMode) var presentationMode
      
      var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 0) {
            Image(warm.image)
              .resizable()
              .scaledToFit()
            
            Group {
              Text(warm.title)
                .font(.system(.largeTitle, design: .serif))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("ColorTealAdaptive"))
                .padding(.top, 10)
              
              WarmRatingsView(warm: warm)
              WarmBeverageDetailView(warm: warm)
              
              Text("Ingredients")
                .fontWeight(.bold)
                .modifier(TitleModifier())
              
              VStack(alignment: .leading, spacing: 5) {
                ForEach(warm.ingredients, id: \.self) { item in
                  VStack(alignment: .leading, spacing: 5) {
                    Text(item)
                      .font(.footnote)
                      .multilineTextAlignment(.leading)
                    Divider()
                  }
                }
              }
              
              Text("Instructions")
                .fontWeight(.bold)
                .modifier(TitleModifier())
              
              ForEach(warm.instructions, id: \.self) { item in
                VStack(alignment: .center, spacing: 5) {
                   Image("Arabica")
//                  Image(systemName: "chevron.down.circle")
//                    .resizable()
                    .resizable().scaledToFit()
                    .frame(width: 62, height: 62, alignment: .center)
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
                self.presentationMode.wrappedValue.dismiss()
              }, label: {
                //Arabica
                Image(systemName: "chevron.down.circle")
                //                    .resizable()
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

    struct RecipeDetailView_Previews: PreviewProvider {
      static var previews: some View {
        WarmDetail(warm: DataWarmDrinks[0])
      }
    }

