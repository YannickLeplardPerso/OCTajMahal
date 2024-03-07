//
//  TajLargeText.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// Texte pour les noms des plats (page menu)
struct TajLargeText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(.tajText)
    }
}

#Preview {
    TajLargeText(text: "Titre secondaire : ex. Samosas")
}
