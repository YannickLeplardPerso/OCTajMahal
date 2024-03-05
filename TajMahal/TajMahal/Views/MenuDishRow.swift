//
//  MenuDishRow.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 27/02/2024.
//

import SwiftUI

struct MenuDishRow: View {
    let dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .frame(width: 112, height: 86)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading) {
                // nom plat
                TajLargeText(text: dish.name)
                //description
                TajText(text: dish.description)
                    .padding(.vertical, 4)
                
                HStack {
                    // prix
                    TajPriceText(text: "5,50")
                    Spacer()
                    // "force piment"
                    TajSpiceLevel(level: dish.spiceLevel)
                }
            }
            //.padding(.horizontal)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    MenuDishRow(dish: ViewModel().apetizerArray[0])
}
