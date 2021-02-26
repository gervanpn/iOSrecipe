//
//  SortGameView.swift
//  Recipes
//  Created by Gervan Nantel on 2021-02-24.
//

import SwiftUI

struct SortGameView: View {
  //MARK: - Properties
  
  @State var input = NumbersOnly()
  let numberList : Array<Int> = [10, 9, 8, 7, 100, 5, 3, 2, 1, 4, 6, 1000]
  
  //MARK: - Body
    var body: some View {
//      TextField("Enter some numbers", text: $input.value)
//        .padding()
//        .keyboardType(.numbersAndPunctuation)
      
      VStack {
        Text("Array of Numbers is: ")
          .font(.title2)
          .foregroundColor(.red)
        Divider()
        HStack {
          ForEach(0..<numberList.count) { item in
            Text("\(numberList[item])")
              .font(.footnote)
          }
        } //: HStack
        
        Spacer()
        
        let results: Array<Int> = numberList.insertionSort()
        
        Text("Sorted Numbers are: ")
          .font(.title2)
          .foregroundColor(.accentColor)
        Divider()
        HStack {
          ForEach(0..<numberList.count) { item in
            Text("\(results[item])")
              .font(.footnote)
          }
        } //: HStack
      } //: VStack
      .frame(width: 325, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      
    }
  
  
}

// MARK: - Preview

struct SortGameView_Previews: PreviewProvider {
    static var previews: some View {
        SortGameView()
          .previewLayout(.sizeThatFits)
          .padding()
    }
}

extension Array where Element: Comparable {
 
 func insertionSort() -> Array<Element> {
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        //mutated copy
        var output: Array<Element> = self
        
        for primaryIndex in 0..<output.count {
            
            let key = output[primaryIndex]
            var secondaryIndex = primaryIndex
            
            while secondaryIndex > -1 {
                if key < output[secondaryIndex] {
                    
                    //move to correct position
                    output.remove(at: secondaryIndex + 1)
                    output.insert(key, at: secondaryIndex)
                }
                secondaryIndex -= 1
            }
        }
        return output
    }
}
