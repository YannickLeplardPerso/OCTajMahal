//
//  WelcomeComponents.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 26/02/2024.
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

// Texte pour les noms des plats (page menu)
struct TajLargeText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(.tajText)
    }
}

// Texte pour lesprix
struct TajPriceText: View {
    let text: String
    
    var body: some View {
        Text("\(text) €")
            .font(.custom("PlusJakartaSans-Bold", size: 12))
            .foregroundStyle(.tajText)
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

// piment rouge ou gris
struct TajPepper: View {
    let isRed: Bool
    
    var body: some View {
        if isRed {
            Image("Pepper")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 12, height: 12)
                .foregroundColor(.customRed)
        }
        else {
            Image("Pepper")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12, height: 12)
        }
        
    }
}
// "force" du plat ± épicé (de 1 à 3 piments rouges)
struct TajSpiceLevel: View {
    let level: SpiceLevel
    
    var body: some View {
        HStack {
            TajPepper(isRed: true)
            switch level {
            case .light:
                TajPepper(isRed: false)
                TajPepper(isRed: false)
            case .medium:
                TajPepper(isRed: true)
                TajPepper(isRed: false)
            case .hot:
                TajPepper(isRed: true)
                TajPepper(isRed: true)
            }
        }
    }
}



#Preview {
    Group {
        TajTitleText(text: "Titre : ex. Taj Mahal")
        TajLargeText(text: "Titre secondaire : ex. Samosas")
        TajText(text: "texte normal")
        
        TajPriceText(text: "prix : 8,40")
        
        TajInformation(icon: "clock", title: "service", information: "information en rapport au service")
            .padding(.horizontal, 20)
        
        TajTextButton(action: {}, title: "aller sur la lune", icon: "moon.stars")
        
        TajSpiceLevel(level: .medium)
    }
    
}
