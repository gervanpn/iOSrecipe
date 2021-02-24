//
//  HomeLayoutView.swift
//  Recipes
//
//  Created by Gervan Nantel on 2021-02-10.
//

import SwiftUI

struct HomeLayoutView: View {
    
    var body: some View {
      ZStack {
        Image("bg_slate")
        VStack{
          Image("imageRecipes")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .frame(width: 325, height: 350, alignment: .center)
          
          Image("text_recipes_wht")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          Divider()
          Text("KEEP, FIND & FAVOURITE YOURS TODAY")
            .font(.headline)
            .foregroundColor(.white)
            .background(Color.white.frame(height: 5).offset(y:-26))
          Image("enter button")
            .resizable()
            .scaledToFill()
            .frame(width: 350, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(y: -20)
        } //: VStack
      } //: ZStack
        
        
            
    }
}

struct HomeLayoutView_Previews: PreviewProvider {
    static var previews: some View {
      HomeLayoutView()
    }
}
