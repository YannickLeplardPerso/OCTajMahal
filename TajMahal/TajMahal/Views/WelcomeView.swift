//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI



// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 20)
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading) {
                    TajText(text: "Restaurant Indien")
                    TajTitleText(text: "Taj Mahal")
                }
                .padding(.vertical, 4)
                
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.tajLogo)
                    
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            
            Spacer()
            
            VStack(alignment: .leading) {
                TajInformation(icon: "clock", title: "Mardi",  information: "11h30 - 14h30 . 18h30 - 22h00")
                    
                TajInformation(icon: "fork.knife", title: "Type de Service",  information: "À emporter")
                
                TajTextButton(action: {
                    // action
//                    if let url = URL(string: "http://maps.apple.com/?q=2 Cour de l’Ile Louviers, 75004 Paris") {
//                        UIApplication.shared.open(url)
//                    }
                }, title: "12 avenue de la Brique - 75010 Paris", icon: "mappin.and.ellipse")
                
                TajTextButton(action: {
                    // action
//                    if let url = URL(string: "https://openclassrooms.com/fr/") {
//                        UIApplication.shared.open(url)
//                    }
                }, title: "www.tajmahal.fr", icon: "globe")
                
                TajTextButton(action: {
                    // action
//                    if let url = URL(string: "tel:0684731985") {
//                        UIApplication.shared.open(url)
//                    }
                }, title: "06 12 34 56 78", icon: "phone")
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .foregroundColor(.white)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 2)
            }
            .buttonStyle(.bordered)
            .background(.customRed)
            .cornerRadius(8.0)
            .padding(.horizontal, 20)
            .padding(.bottom, 10)
        }
    }
}

#Preview {
    WelcomeView()
}
