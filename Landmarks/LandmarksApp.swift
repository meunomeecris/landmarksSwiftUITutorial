//
//  LandmarksApp.swift
//  landmarks
//
//  Created by Cris Messias on 07/02/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
