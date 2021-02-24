//
//  RecipeListView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-11.
//

import SwiftUI

struct RecipeListView: View {
    //MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    @State private var isSignedIn: Bool = false
    var recipes: [Recipe] = recipeData
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes) { item in
                    NavigationLink(destination:
                        RecipeDetailView(recipe: item)) {
                            RecipeRowView(recipe: item)
                                .padding(.vertical, 5)
                    }
                } //: ForEach
            } //: List
            .navigationTitle("Recipes")
            .navigationBarItems(leading: navigationTitle("Recipes"))
            .navigationBarItems(trailing: Button(action: {
                  isSignedIn = true}, label: {
                Image(systemName: "plus")}))

        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(recipes: recipeData)
    }
}
