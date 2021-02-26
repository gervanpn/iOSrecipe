//
//  MenuLayoutView.swift
//  Recipes
//
//  Created by Gervan Nantel on 2021-02-24.
//

import SwiftUI

struct MenuLayoutView: View {
  //MARK: - Properties
  
  @State var menuOpen: Bool = false
  
  //MARK: - Body
    var body: some View {
      ZStack {
        Image("bg_slate")
        Divider()
        if !self.menuOpen {
          Button(action: {
            self.openMenu()
          }, label: {
            Text("Open")
//              .background(Color.accentColor)
              .font(.title)
              .fontWeight(.bold)
          })
        } //: if
        MenuSideView(width: 225,
                     isOpen: self.menuOpen,
                     menuClose: self.openMenu)
          .position(x: 30.0, y: 300.0)

      } //: ZStack
    }
  
  
func openMenu() {
    self.menuOpen.toggle()
    }
}

//MARK: - Preview

struct MenuLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        MenuLayoutView()
    }
}
