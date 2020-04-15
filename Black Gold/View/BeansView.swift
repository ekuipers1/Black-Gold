//
//  Beans.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/1/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct BeansView: View {

    var beandata: Beansinfo
    
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
        VStack {
            Image(beandata.image)
                .resizable().scaledToFit()
                .frame(width: 160, height: 130, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius:20))
                .background(
                    RoundedRectangle(cornerRadius:20)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorTealMedium")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorTealAdaptive"), radius: 6, x: 0, y: 6)
                        .frame(width: 200, height: 140, alignment: .center)
            )
                .background(
                    RoundedRectangle(cornerRadius:20)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorTealLight")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                        .frame(width: 210, height: 150, alignment: .center)
            )
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .center, spacing: 0) {
                    Text("Step")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                        .padding(.top)
                    Text(beandata.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                }
                .foregroundColor(Color("ColorAppearanceAdaptive"))
                .padding(.top, 65)
                .frame(width: 180)
                
                Text(beandata.title)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorTealDark"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorTealLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                )
                
                Spacer()
                Text(beandata.description)
                    .font(.footnote)
                    .foregroundColor(Color("ColorAppearanceAdaptive"))
                    .fontWeight(.regular)
                    .lineLimit(nil)
                Spacer()
                
                Spacer()
                    .frame(height: 10)
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 300, height: 500, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorTealAdaptive"), Color("ColorTealMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.slideInAnimation.toggle()
        })
    }
}

struct Beans_Previews: PreviewProvider {
    static var previews: some View {
        BeansView(beandata: beansData[4])
            .previewDevice("iPhone 11 Pro")
    }    }


