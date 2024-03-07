//
//  TajText.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// Texte normal
struct TajText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Regular", size: 12))
            .foregroundStyle(.tajText)
    }
}

#Preview {
    TajText(text: "texte normal")
}
