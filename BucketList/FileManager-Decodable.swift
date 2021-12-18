//
//  FileManager-Decodable.swift
//  BucketList
//
//  Created by Dmitry Sharabin on 18.12.2021.
//

import Foundation

extension FileManager {
    func decode<T: Decodable>(_ file: String) -> T {
        let paths = Self.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        
        let url = documentsDirectory.appendingPathComponent(file)
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from the documents directory.")
        }
        
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from the documents directory.")
        }
        
        return loaded
    }
}
