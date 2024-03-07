//
//  DishView.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

struct DishView: View {
    let dish: Dish
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(dish.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            
            RoundedRectangle(cornerRadius: 11)
                .fill(.white)
                .frame(width: 74, height: 22)
                .padding(.top, 12)
                .padding(.trailing, 12)
            
            TajSpiceLevel(level: dish.spiceLevel)
                .frame(width: 74, height: 22)
                .padding(.top, 12)
                .padding(.trailing, 12)
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 40)
                
        VStack(alignment: .leading) {
            TajTextBold(text: "Allergènes : ")
                .padding(.bottom, 4)
            TajText(text: dish.allergens)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 20)
        
        Divider()
            .padding(.horizontal, 20)
            .padding(.vertical, 4)
            
        VStack(alignment: .leading) {
            TajTextBold(text: "Ingrédients :")
                .padding(.bottom, 4)
            TajText(text: dish.ingredients)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 20)
        .padding(.bottom)
        
        Spacer()
    }
}

#Preview {
    DishView(dish: ViewModel().mainCourseArray[0])
}
