//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Cris Messias on 10/02/25.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle

    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

