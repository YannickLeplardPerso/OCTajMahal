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
            // Image de présentation
            Image("TajMahal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 20)
            
            Spacer()
            // Nom et logo du restaurant
            HStack {
                VStack(alignment: .leading) {
                    TajText(text: "Restaurant Indien")
                    TajTitleText(text: "Taj Mahal")
                }
                
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.tajLogo)
                    
            }
            .padding(.horizontal, 20)
            
            Spacer()
            // Informations
            VStack(alignment: .leading) {
                // horaires
                TajInformationRow(icon: "clock", title: "Mardi",  information: "11h30 - 14h30 . 18h30 - 22h00")
                // type de service
                TajInformationRow(icon: "fork.knife", title: "Type de Service",  information: "À emporter")
                
                // adresse
                TajInformationLinkRow(action: {
/* === pour ouvrir l'adresse [ADRESSE] dans "Plans"
                    if let url = URL(string: "http://maps.apple.com/?q=2 ADRESSE") {
                        UIApplication.shared.open(url)
                    }
 */
                }, title: "12 avenue de la Brique - 75010 Paris", icon: "mappin.and.ellipse")
                // lien vers un site web [HTTPS://SITEWEB]
                TajInformationLinkRow(action: {
/* === pour aller sur le site web du restaurant avec Safari
                    if let url = URL(string: "HTTPS://SITEWEB") {
                        UIApplication.shared.open(url)
                    }
 */
                }, title: "www.tajmahal.fr", icon: "globe")
                // téléphone
                TajInformationLinkRow(action: {
/* === pour appeler le restaurant au numéro [XXXXXXXX]
                    if let url = URL(string: "tel:XXXXXXXX") {
                        UIApplication.shared.open(url)
                    }
 */
                }, title: "06 12 34 56 78", icon: "phone")
            }
            .padding(.horizontal, 20)

            Spacer()
            // pour lancer la view du menu
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
        }
        //.padding(.horizontal, 20)
        .padding(.bottom, 4)
        .accentColor(.primary)
    }
}

#Preview {
    WelcomeView()
}
