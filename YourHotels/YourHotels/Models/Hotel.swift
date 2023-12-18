//
//  Hotel.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import Foundation

struct Hotel: Codable {
    let id: Int
    let name: String
    let adress: String
    let minimalPrice: Int
    let priceForIt: String
    let rating: Int
    let ratingName: String
    let imageURLs: [String]
    let aboutTheHotel: AboutTheHotel
}

struct AboutTheHotel: Codable {
    let description: String
    let peculiarities: [String]
}

