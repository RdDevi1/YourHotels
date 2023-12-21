//
//  NetworkClient.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import Foundation

enum NetworkClientError: Error {
    case httpStatusCode(Int)
    case parsingError
    case urlSessionError
    case requestError
}

struct NetworkClient: NetworkClientProtocol {
    
    private let urlSession: URLSession
    private let decoder: JSONDecoder
    
    init(urlSession: URLSession = URLSession.shared,
         decoder: JSONDecoder = JSONDecoder()) {
        self.urlSession = urlSession
        self.decoder = decoder
    }
    
    func fetchData<T>(
        with urlString: String,
        model: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) where T : Decodable {
    
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        
        urlSession.dataTask(with: request) { data, response, error in
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
                completion(.failure(NetworkClientError.urlSessionError))
                return
            }
            
            guard 200...300 ~= statusCode else {
                completion(.failure(NetworkClientError.httpStatusCode(statusCode)))
                return
            }
            
            if let data {
                self.parse(to: model, with: data, completion: completion)
            }
            
            if error != nil {
                completion(.failure(NetworkClientError.requestError))
            }
        }
        .resume()
    }
    
    private func parse<T: Decodable>(
        to model: T.Type,
        with data: Data,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        do {
            let model = try decoder.decode(T.self, from: data)
            completion(.success(model))
        } catch {
            completion(.failure(NetworkClientError.parsingError))
        }
    }
}
