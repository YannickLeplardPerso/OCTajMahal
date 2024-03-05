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
        TajTitleText(text: "Menu")
        
        //VStack(alignment: .leading) {
            
            //TajLargeText(text: "Entrées")
        GroupBox(label: TajLargeText(text: "Entrées")) {
            
            List(viewModel.apetizerArray) { dish in
                MenuDishRow(dish: dish)
                    //.padding(.vertical)
            }
        }
        
        GroupBox(label: TajLargeText(text: "Plats Principaux")) {
            
            List(viewModel.mainCourseArray) { dish in
                MenuDishRow(dish: dish)
                    //.padding(.vertical)
            }
        }
        //}
        //.ignoresSafeArea()
        
    }
}

#Preview {
    MenuView()
}
