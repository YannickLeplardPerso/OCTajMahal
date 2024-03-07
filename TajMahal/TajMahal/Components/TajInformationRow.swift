//
//  TajInformationRaw.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// Ligne avec une icône, un titre... et un texte d'information
struct TajInformationRow: View {
    let icon: String
    let title: String
    let information: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.tajText)
                .font(.system(size: 12))
            TajText(text: title)
            Spacer()
            TajText(text: information)
        }
        .padding(.vertical, 2)
    }
}

#Preview {
    TajInformationRow(icon: "clock", title: "service", information: "information en rapport au service")
        .padding(.horizontal, 20)
}
