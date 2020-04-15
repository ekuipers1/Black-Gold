//
//  MapViewDetail.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/8/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI


struct MapViewDetail: View {
    
    var factsWorld: WorldFact
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image(factsWorld.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(factsWorld.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .shadow(radius: 30)
                    
                    Text(factsWorld.content)
                        .font(.footnote)
                        .lineLimit(20)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.all, 20)
                .frame(width: 365.0, height: 300)
                    
                .background(Color("ColorBlackTransparentLight"))
            }
            .cornerRadius(20)
                
            .frame(width: 385, height: 200, alignment: .bottomLeading)
            .offset(x: 2, y: showHeadline ? 55 : 180)
            .animation(slideInAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
        }
        .frame(width: 450, height: 350, alignment: .center)
    }
}
struct MapViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        MapViewDetail(factsWorld: MapData[1])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}


