//
//  TajInformationLinkRow.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// Ligne avec une icône, un titre... et un texte d'information

struct TajInformationLinkRow: View {
    let action: () -> Void
    let title: String
    let icon: String
    
    var body: some View {
        HStack {
            Button(action: {
                action()
            }) {
            Label(title, systemImage: icon)
                .foregroundStyle(.tajText)
            }
            .buttonStyle(.plain)
            .font(.custom("PlusJakartaSans-VariableFont_wght", size: 12))
        }
        .padding(.vertical, 2)
    }
}

#Preview {
    TajInformationLinkRow(action: {
//=== pour ouvrir l'adresse dans "Plans"
        if let url = URL(string: "http://maps.apple.com/?q=2 Cour de l’Ile Louviers, 75004 Paris") {
            UIApplication.shared.open(url)
        }
    }, title: "2 Cr de l'île Louviers, 75004 Paris", icon: "mappin.and.ellipse")
}
