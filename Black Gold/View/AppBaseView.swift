//
//  AppBaseView.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/1/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct AppBaseView: View {
    var body: some View {
        TabView {
            //      AvocadosView()
            //        .tabItem({
            //          Image("tabicon-branch")
            //          Text("Avocados")
            //        })
            Home()
                .tabItem({
                    Image("RecipeTab")
                    Text("Recipes")
                })
            BeansStages()
                .tabItem({
                    Image("BeansTab")
                    Text("Beans")
                })
            CoffeeWorldView()
                .tabItem({
                    Image("MapTab")
                    Text("Top 10")
                })
            WorldDetail()
                .tabItem({
//                    Image(systemName: "location")
                    Image("Location")
                    Text("Near me")
                })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppBaseView()
            .previewDevice("iPhone 11 Pro")
            .environment(\.colorScheme, .dark)
    }
}
