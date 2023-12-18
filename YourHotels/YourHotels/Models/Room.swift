//
//  Room.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import Foundation

struct Room: Codable {
    let id: Int
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageURLs: [String]
}
