//
//  TajTextBold.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// Texte gras
struct TajTextBold: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Bold", size: 12))
            .foregroundStyle(.tajText)
    }
}

#Preview {
    TajTextBold(text: "texte gras")
}
