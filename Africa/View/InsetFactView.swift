//
//  InsetFactView.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import SwiftUI

struct InsetFactView: View {
  var animal: Animal
    var body: some View {
      GroupBox {
        TabView{
          ForEach(animal.fact, id: \.self) { item in
            Text(item)  
          }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        .foregroundStyle(.secondary)
      }
      
    }
}

struct InsetFactView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")

  static var previews: some View {
    InsetFactView(animal: animals[0])
  }
}
