//
//  TajSpiceLevel.swift
//  TajMahal
//
//  Created by Yannick LEPLARD on 07/03/2024.
//

import SwiftUI

// "force" du plat ± épicé (de 1 à 3 piments rouges)
struct TajSpiceLevel: View {
    let level: SpiceLevel
    
    var body: some View {
        HStack {
            ForEach(SpiceLevel.allCases, id: \.rawValue) { spiceLevel in
                let isRed = spiceLevel.rawValue <= level.rawValue
                TajPepper(isRed: isRed)
            }
        }
    }
}

//            TajPepper(isRed: true)
//            switch level {
//            case .light:
//                TajPepper(isRed: false)
//                TajPepper(isRed: false)
//            case .medium:
//                TajPepper(isRed: true)
//                TajPepper(isRed: false)
//            case .hot:
//                TajPepper(isRed: true)
//                TajPepper(isRed: true)
//            }

#Preview {
    Group {
        TajSpiceLevel(level: .light)
        TajSpiceLevel(level: .medium)
        TajSpiceLevel(level: .hot)
    }
}
