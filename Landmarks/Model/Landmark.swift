//
//  Landmark.swift
//  Landmarks
//
//  Created by Cris Messias on 07/02/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case capital = "Capital"
        case metropolis = "Metropolis"
        case villages = "Villages"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
