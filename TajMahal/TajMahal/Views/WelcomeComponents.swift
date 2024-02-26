//
//  WelcomeComponents.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 26/02/2024.
//

import SwiftUI



// Texte en "Gras et Grand" (pour le nom du Restaurant)
struct TajTitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Bold", size: 18))
            .foregroundStyle(.tajTitleText)
    }
}

// Texte normal
struct TajText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Regular", size: 12))
            .foregroundStyle(.tajText)
    }
}

// Ligne avec une icône, un titre... et un texte d'information
struct TajInformation: View {
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

// Ligne avec un bouton + icône, avec l'apparence d'un texte normal
struct TajTextButton: View {
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

//#Preview {
//    WelcomeComponents()
//}
