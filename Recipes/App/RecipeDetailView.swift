//
//  RecipeDetailView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-11.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    @State private var isSignedIn: Bool = false
    var recipe: Recipe
    
    //MARK: - Body
    var body: some View {
        VStack {
          RecipeCardView(recipe: recipe)
          
          ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 10) {
              
              DetailLabelView(labelText: "Category", labelImage: "seal")
              Text("\(recipe.recipe_category)")
                .padding(.horizontal)
//              Divider()
              DetailLabelView(labelText: "Description", labelImage: "d.square")
              Text(recipe.recipe_detail)
                .padding(.horizontal)
//              Divider()
//              Divider()
              
              DetailLabelView(labelText: "Ingredients", labelImage: "i.square")
              IngredientsListView(recipe: recipe, itemNumber: 1)
                .padding(.horizontal)
              Spacer()
              DetailLabelView(labelText: "Preparation", labelImage: "p.square")
              Text(recipe.recipe_instructions)
                .padding(.horizontal)
//              Divider()
            } //: VStack
          } //: Scroll End
          
          
        } // VStack
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
        .edgesIgnoringSafeArea(.top)
        .font(.title)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
      RecipeDetailView(recipe: recipeData[0])
        .previewLayout(.fixed(width: 350, height: 325))
    }
}
