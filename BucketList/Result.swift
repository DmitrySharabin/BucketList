//
//  Result.swift
//  BucketList
//
//  Created by Dmitry Sharabin on 21.12.2021.
//

import Foundation

struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable {
    let pageid: Int
    let title: String
    let terms: [String: [String]]?
}
