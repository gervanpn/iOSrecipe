//
//  NumbersOnly.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-24.
//

import Foundation

class NumbersOnly: ObservableObject {
  @Published var value = "" {
    didSet {
      let filtered = value.filter { $0.isNumber}
      
      if value != filtered {
        value = filtered
      }
    }
  }
}
