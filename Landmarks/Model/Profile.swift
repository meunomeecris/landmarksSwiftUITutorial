//
//  Profile.swift
//  Landmarks
//
//  Created by Cris Messias on 13/02/25.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.spring
    var goalDate = Date()

    static let `default` = Profile(username: "NotMyName")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }

}
