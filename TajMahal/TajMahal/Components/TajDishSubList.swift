//
//  TajDishSubList.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// section de liste pour un type de plat (entrée, plat principal, ...)
struct TajDishSubList: View {
    let dishType: String
    let dishesList: [Dish]
    
    var body: some View {
        Section(header: TajLargeText(text: dishType))
        {
            ForEach(dishesList) { dish in TajDishRow(dish: dish)
            }
            .background(RoundedRectangle(cornerRadius: 8).fill(.white))
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
        }
        .textCase(nil)
        .listRowInsets(EdgeInsets())
    }
}


// !!! preview pas significative car certains éléments semblent dépendre de la liste
#Preview {
    TajDishSubList(dishType: "Entrées", dishesList: ViewModel().apetizerArray)
        .background(Color.purple)
}
