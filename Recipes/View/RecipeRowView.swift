//
//  RecipeCardView.swift
//  Recipes
//
//  Created by Gervan Nantel on 2021-02-11.
//

import SwiftUI

struct RecipeRowView: View {
    //MARK: - Properties
    
    var recipe: Recipe
    
    //MARK: - Body
    var body: some View {
        HStack {
          // Food Picture
          Image(recipe.recipe_picture ?? "empty_plate")
            .resizable()
            .scaledToFit()
            .cornerRadius(5)
            .frame(maxWidth: 60)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
          VStack(alignment: .leading) {
                // Name
              Text(recipe.recipe_name)
                .font(.headline)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            
              Text(recipe.recipe_detail)
                .font(.footnote)
//                .padding(.horizontal, 10)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
            } //: VStack End
            .cornerRadius(5)
        } //: HStack End
    }
}

//MARK: - Preview

struct RecipeListCardView_Previews: PreviewProvider {
    static var previews: some View {
      RecipeRowView(recipe: recipeData[0])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
