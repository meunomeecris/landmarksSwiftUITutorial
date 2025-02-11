//
//  ContentView.swift
//  landmarks
//
//  Created by Cris Messias on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        LandmarkList()
        HikeView(hike: ModelData().hikes[0])
            .padding()
    }
}
