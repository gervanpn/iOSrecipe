//
//  DetailLabelView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-18.
//

import SwiftUI

struct DetailLabelView: View {
  
  //MARK: - Properties
  
  var labelText: String
  var labelImage: String
  
  //MARK: - Body
    var body: some View {
      VStack {
        HStack {
          Text(labelText)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.accentColor)
          Spacer()
          Image(systemName: labelImage)
            .foregroundColor(.red)
        }//: HStack
        Divider()
          .padding(.horizontal)
      } //: VStack
    }
}

// MARK: - Preview

struct DetailLabelView_Previews: PreviewProvider {
    static var previews: some View {
        DetailLabelView(labelText: "Recipes", labelImage: "info.circle")
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
