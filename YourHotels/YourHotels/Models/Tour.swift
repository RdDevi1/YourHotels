//
//  Tour.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import Foundation

struct Tour: Codable {
    let id: Int
    let hotel: Hotel
    let departureCity: String
    let arrivalCountry: String
    let arrivalCity: String
    let tourDateStart: String
    let tourDateFinish: String
    let nights: Int
    let room: String
    let nutrition: String
    let tourPrice: Int
    let fuelCharge: Int
    let serviceCharge: Int
    let finalPrice: Int
    
    
    init(id: Int, hotel: Hotel, departureCity: String, arrivalCountry: String, arrivalCity: String, tourDateStart: String, tourDateFinish: String, nights: Int, room: String, nutrition: String, tourPrice: Int, fuelCharge: Int, serviceCharge: Int, finalPrice: Int) {
        self.id = id
        self.hotel = hotel
        self.departureCity = departureCity
        self.arrivalCountry = arrivalCountry
        self.arrivalCity = arrivalCity
        self.tourDateStart = tourDateStart
        self.tourDateFinish = tourDateFinish
        self.nights = nights
        self.room = room
        self.nutrition = nutrition
        self.tourPrice = tourPrice
        self.fuelCharge = fuelCharge
        self.serviceCharge = serviceCharge
        self.finalPrice = tourPrice + finalPrice + serviceCharge
    }
}
