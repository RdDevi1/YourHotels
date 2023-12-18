//
//  NetworkClientProtocol.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import Foundation

protocol NetworkClientProtocol: Any {
    func fetchData<T: Decodable>(
        with urlString: String,
        model: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    )
}
