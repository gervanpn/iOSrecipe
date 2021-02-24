//
//  IngredientsListView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-18.
//

import SwiftUI

struct IngredientsListView: View {
  
  //MARK: - Properties
  
  var recipe: Recipe
  var itemNumber = 0
  
  //MARK: - Body
  
    var body: some View {
      VStack{
        GroupBox() {
          DisclosureGroup("see more") {
              ForEach(0..<recipe.recipe_ingredients.count, id: \.self) { item in
                    Divider()
                      .padding(.vertical, 2)
                    HStack {
                      Image(systemName: "app")
                        .foregroundColor(.accentColor)
                        .font(Font.system(.body).bold())
                      Spacer(minLength: 15)
                      Text(recipe.recipe_ingredients[item])
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    } //: Hstack
                }
            } //: Disclosure Group
          .multilineTextAlignment(.leading)
        } //: Groupbox
      } //: VStack
    }
}

// MARK: - Preview

struct IngredientsListView_Previews: PreviewProvider {
    static var previews: some View {
      IngredientsListView(recipe: recipeData[0])
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
