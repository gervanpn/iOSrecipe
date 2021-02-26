//
//  MainView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-11.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    
    var recipe: Recipe
    @State var menuOpen: Bool = false
    
    //MARK: - Body
    var body: some View {
      ZStack {
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
              
              MenuLayoutView()
                  .tabItem {
                    if !self.menuOpen {
                      Button(action: {
                        self.openMenu()
                      }, label: {
                        Image(systemName: "ellipsis.circle.fill")
                        Text("Sort")
                      })
                    }
                      
                  }
          } //: TabView
        .background(Color.white)
      } //: ZStack
    }
  
  func openMenu() {
      self.menuOpen.toggle()
      }

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(recipe: recipeData[0])
            .foregroundColor(.white)
    }
}
