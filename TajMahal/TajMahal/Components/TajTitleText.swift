//
//  TajTitleText.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// Texte de titres (nom du Restaurant, menu, nom du plat)
struct TajTitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Bold", size: 18))
            .foregroundStyle(.tajTitleText)
    }
}


#Preview {
    TajTitleText(text: "Titre : ex. Taj Mahal")
}
