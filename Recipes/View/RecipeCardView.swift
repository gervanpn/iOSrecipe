//
//  RecipeCardView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-18.
//

import SwiftUI

struct RecipeCardView: View {
  //MARK: - Properties
  var recipe: Recipe
  
  //MARK: - Body
    var body: some View {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [Color.black, Color.black]), startPoint: .topTrailing, endPoint: .bottomLeading
        )
        VStack {
          Image(recipe.recipe_picture!)
            .resizable()
            .scaledToFit()
            .cornerRadius(5)
            .padding(.vertical, 10)
            .opacity(0.6)
          Text(recipe.recipe_name)
            .font(.title3)
            .fontWeight(.heavy)
            .foregroundColor(.accentColor)
            .multilineTextAlignment(.center)
            .lineLimit(2)
        } //: Vstack End
        .frame(minHeight: 300, maxHeight: 375)
      } //: ZStack
      
    }
}

//MARK: - Preview

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
          .previewLayout(.fixed(width: 375, height: 375))
          .padding()
    }
}
