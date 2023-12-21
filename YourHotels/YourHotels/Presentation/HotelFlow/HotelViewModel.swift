//
//  HotelViewModel.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import Foundation

final class HotelViewModel: HotelViewModelProtocol {
    
    private let networkClient: NetworkClientProtocol?
    
    // MARK: - Lifecycle:
    init(networkClient: NetworkClientProtocol) {
        self.networkClient = networkClient
    }
    
}
