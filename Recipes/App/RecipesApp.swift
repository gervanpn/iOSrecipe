//
//  RecipesApp.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-10.
//

import SwiftUI
//import UIKit
//import Firebase

@main
struct RecipesApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            MainView(recipe: recipeData[0])
        }
    }
  
  class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

//    func application(_ application: UIApplication,
//      didFinishLaunchingWithOptions launchOptions:
//        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//      FirebaseApp.configure()
//      return true
//    }
  }
}
