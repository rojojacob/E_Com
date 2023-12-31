//
//  CodableBundleExtention.swift
//  Touchdown
//
//  Created by wac on 18/07/23.
//

import Foundation

// here we make the json call common
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T  {
        //1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else  {
            fatalError("Failed to loacte \(file) in bundle.")
        }
        
        //2. Create a property for the data
        guard let data = try? Data(contentsOf:  url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        //3. Create a decoder
        let decoder = JSONDecoder()
        
        //4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) form bundle.")
        }
        
        //5. Return the ready-to-use data
        return decodedData
    }
}
