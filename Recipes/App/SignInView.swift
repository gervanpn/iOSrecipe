//
//  SignInView.swift
//  Recipes
//
//  Created by Gervan Nantel on 2021-02-11.
//

import SwiftUI


struct SignInView: View {
  //MARK: - Properties
  @AppStorage("isLoggedIn") var isLoggedIn: Bool = true
  
  
  
  //MARK: - Body
    var body: some View {
      
      VStack {
        if isLoggedIn == false {
          SignInDetailView()
        } else {
          SignOutDetailView()
        }
      }
    }
}

//MARK: - Preview

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
          .previewDevice("iPhone 11 Pro")
    }
}
