//
//  TajDishRow.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

struct TajDishRow: View {
    let dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 112, height: 86)
                .cornerRadius(10.0)
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                // nom plat
                TajLargeText(text: dish.name)
                //description
                TajText(text: dish.description)
                    .padding(.vertical, 4)
                
                HStack {
                    // prix
                    TajEuroPrice(price: dish.price)
                    Spacer()
                    // "force piment"
                    TajSpiceLevel(level: dish.spiceLevel)
                }
            }
        }
        .padding(20)
        .background(.tajBackground)
        .cornerRadius(10.0)
        
    }
}

#Preview {
    TajDishRow(dish: ViewModel().mainCourseArray[0])
}
