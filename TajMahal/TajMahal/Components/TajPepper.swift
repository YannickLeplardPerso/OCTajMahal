//
//  TajPepper.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

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

#Preview {
    Group {
        TajPepper(isRed: true)
        TajPepper(isRed: false)
    }
}
