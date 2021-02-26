//
//  MenuContentView.swift
//  Recipes
//
//  Created by Gervan Nantel on 2021-02-24.
//

import SwiftUI

struct MenuContentView: View {
  //MARK: _ Properties
  
  
  //MARK: - Body
    var body: some View {
      List {
        Spacer()
        HStack {
          Image(systemName: "person")
            .foregroundColor(.accentColor)
          Text("My Profile").font(.title3).onTapGesture {
            print("My Profile")
          }
        } //: Hstack
        HStack {
          Image(systemName: "star")
            .foregroundColor(.accentColor)
          Text("My Favorites").font(.title3).onTapGesture {
            print("My Favorites")
          }
        } //: Hstack
        HStack {
          Image(systemName: "arrow.up.arrow.down.circle")
            .foregroundColor(.accentColor)
          Text("Sort Game").font(.title3).onTapGesture {
            print("Sort Game")
//            SortGameView()
          }
        } //: Hstack
        HStack {
          Image(systemName: "arrow.up.forward.app")
            .foregroundColor(.accentColor)
          Text("Logout").font(.title3).onTapGesture {
            print("Logout")
          }
        } //: Hstack
      }//: List
      .frame(width: 225, height: 300, alignment: .leading)
      .padding()
    }
}

//MARK: - Preview

struct MenuContentView_Previews: PreviewProvider {
    static var previews: some View {
      MenuContentView()
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
