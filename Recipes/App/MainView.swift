//
//  MainView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-11.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    
    var recipe: Recipe
    
    //MARK: - Body
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            SignInView()
                .tabItem {
                    Image(systemName: "lock.fill")
                    Text("Sign In")
                }
            
            RecipeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Recipes")
                }
            
            RecipeDetailView(recipe: recipeData[1])
                .tabItem {
                    Image(systemName: "ellipsis.circle.fill")
                    Text("More")
                }
        }
        .background(Color.white)//: TabView
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(recipe: recipeData[0])
            .foregroundColor(.white)
    }
}
