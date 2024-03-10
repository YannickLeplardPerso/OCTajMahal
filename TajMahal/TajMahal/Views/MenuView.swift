//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            //TajTitleText(text: "Menu")
                          
            List {
//                TajDishSubList(dishType: "Entrées", dishesList: viewModel.apetizerArray)
//                
//                TajDishSubList(dishType: "Plats principaux", dishesList: viewModel.mainCourseArray)
                
                Section(header: TajLargeText(text: "Entrées"))
                {
                    ForEach(viewModel.apetizerArray) { dish in
                        NavigationLink(destination: DishView(dish: dish), label: {
                            TajDishRow(dish: dish)
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                    .background(RoundedRectangle(cornerRadius: 8).fill(.tajBackground))
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
                }
                .textCase(nil)
                .listRowInsets(EdgeInsets())
                
                Section(header: TajLargeText(text: "Plats"))
                {
                    ForEach(viewModel.mainCourseArray) { dish in
                        NavigationLink(destination: DishView(dish: dish), label: {
                            TajDishRow(dish: dish)
                        })
                        .buttonStyle(PlainButtonStyle())
                        // === barre de navigation
                        .navigationBarTitleDisplayMode(.inline)
                        // titre du backup button (sur la page suivante)
                        .navigationTitle("   ")
                        // titre de la page en cours
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                TajTitleText(text: "Menu")
                            }
                        }
                    }
                    .background(RoundedRectangle(cornerRadius: 8).fill(.tajBackground))
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
                }
                .textCase(nil)
                .listRowInsets(EdgeInsets())
            }
        }
    }
}

#Preview {
    MenuView()
}
