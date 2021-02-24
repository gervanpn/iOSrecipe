//
//  RecipeModel.swift
//  Recipes
//
//  Created by Gervan Nantel on 2021-02-10.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var recipe_id: String
    var recipe_name: String
    var recipe_detail: String
    var recipe_picture: String?
    var recipe_ingredients: [String]
    var recipe_instructions: String
    var recipe_category: String = ""
    var recipe_status: Bool = false
    var user_id: String
}
