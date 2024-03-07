//
//  TajEuroPrice.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// Texte pour les prix
struct TajEuroPrice: View {
    let price: Double
    
    var body: some View {
        // 2 chiffres après la virgule (centimes)
        let formattedPrice = price.formatted(.number.precision(.fractionLength(2)))
        // ajout de la monnaie €
        Text("\(formattedPrice) €")
            .font(.custom("PlusJakartaSans-Bold", size: 12))
            .foregroundStyle(.tajText)
    }
}

#Preview {
    TajEuroPrice(price: 8.40)
}
