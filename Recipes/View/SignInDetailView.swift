//
//  SignInDetailView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-18.
//

import SwiftUI


struct SignInDetailView: View {
  //MARK: - Properties
  @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
  
 
  
  //MARK: - Body
    var body: some View {
      VStack {
        Text("Please Sign In")
            .font(.title)
          .foregroundColor(.red)
        Spacer()
        VStack {
          HStack {
            Text("Email")
              .font(.title2)
              .frame(width: 100)
            Spacer(minLength: 10)
          } //: HStack - Email
          Spacer()
          HStack {
            Text("Password")
              .font(.title2)
              .frame(width: 100)
            Spacer(minLength: 10)
          } //: HStack - password
        }
      
        
        
        Button(action: {
          isLoggedIn = true
        }, label: {
          Text("SIGN IN")
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
      .padding(.vertical)
      .frame(width: 350, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct SignInDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SignInDetailView()
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
