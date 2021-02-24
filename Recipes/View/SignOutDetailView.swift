//
//  SignOutDetailView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-18.
//

import SwiftUI

struct SignOutDetailView: View {
  //MARK: - Properties
  @AppStorage("isLoggedIn") var isLoggedIn: Bool = true
  
  //MARK: - Body
    var body: some View {
      VStack {
        Text("gervanpn@gmail.com")
            .font(.title)
          .foregroundColor(.red)
        Spacer()
        Button(action: {
          isLoggedIn = false
        }, label: {
          Text("SIGN OUT")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(Color.accentColor).cornerRadius(5)
        })
        .padding(.top, 20)
      } //: VStack
      .padding(.horizontal)
      .frame(width: 350, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      
    }
}

//MARK: - Preview

struct SignOutDetailView_Previews: PreviewProvider {
    static var previews: some View {
      SignOutDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
