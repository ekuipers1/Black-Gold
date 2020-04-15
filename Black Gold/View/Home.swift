//
//  Home.swift
//  Black Gold
//
//  Created by Erik Kuipers on 3/27/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var warmdrinks: [WarmDrinks] = DataWarmDrinks
    var colddrinks: [ColdDrinks] = DataColdDrinks
    
    var body: some View {
        GeometryReader { gr in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 0) {
                            ForEach(self.headers) { item in
                                HeaderView(header: item)
                            }
                        }
                    }
                    
                    Text("Coffee Facts")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 60) {
                            ForEach(self.facts) { item in
                                CoffeeFacts(fact: item)
                            }
                        }
                        .padding(.vertical)
                        .padding(.leading, 60)
                        .padding(.trailing, 20)
                    }
                    
                    Text("Warm Coffee Recipes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(self.warmdrinks) { item in
                                Warm(warm: item)
                            }
                        }
                        .padding(.vertical, 20)
                        .padding(.horizontal, 7.0)
                        .padding(.trailing, 40)
                    }
                    
                    Text("Cold Coffee Recipes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(self.colddrinks) { item in
                                Cold(cold: item)
                            }
                        }
                            
                        .padding(.vertical, 20)
                        .padding(.horizontal, 7.0)
                        .padding(.trailing, 40)
                        
                    }
                    
                    VStack(alignment: .center, spacing: 20) {
                        Text("Black Gold")
                            .fontWeight(.bold)
                            .modifier(TitleModifier())
                        Text("Coffee information in a 100% native SwiftUI app.")
                            .font(.system(.body, design: .serif))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.gray)
                            .frame(minHeight: 60)
                    }
                    .frame(maxWidth: 640)
                    .padding()
                    .padding(.bottom, 85)
                }
            }
            .edgesIgnoringSafeArea(.all)
            .padding(0)
        }
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorTealAdaptive"))
            .padding(8)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(headers: headersData, warmdrinks: DataWarmDrinks)
            .previewDevice("iPhone 11 Pro")
        //          .previewDevice("iPhone 11 Pro")
        
    }
}
