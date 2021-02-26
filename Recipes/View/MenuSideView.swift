//
//  MenuSideView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-24.
//

import SwiftUI

struct MenuSideView: View {
  //MARK: - Properties

  let width: CGFloat
  let isOpen: Bool
  let menuClose: () -> Void

  //MARK: - Body
    var body: some View {
      ZStack {
        GeometryReader { _ in
          EmptyView()
        }
        .background(Color.gray.opacity(0.1))
        .opacity(self.isOpen ? 1.0 : 0.0)
        .animation(Animation.easeIn.delay(0.25))
        .onTapGesture {
          self.menuClose()
        }
        HStack {
          Spacer()
          
          MenuContentView()
            .frame(width: self.width)
            .background(Color.accentColor)
            .offset(x: self.isOpen ? 0 : -self.width)
            .animation(.default)
        }//: HStack
      }//: ZStack
    }
}

//MARK: - Preview

//struct MenuSideView_Previews: PreviewProvider {
//    static var previews: some View {
//      MenuContentView()
//          .previewLayout(.sizeThatFits)
//          .padding()
//    }
//}
