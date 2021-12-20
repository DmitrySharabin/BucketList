//
//  Location.swift
//  BucketList
//
//  Created by Dmitry Sharabin on 20.12.2021.
//

import Foundation

struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
}
