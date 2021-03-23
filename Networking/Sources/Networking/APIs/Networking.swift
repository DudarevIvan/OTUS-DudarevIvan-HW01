//
//  Networking.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import Foundation

// Remake
public enum NetworkError: Error {
    case URLError
    case DataError
    case FileDecodingError(Error)
}

public class Networking {
    
    public static let shared: Networking = .init()
        
    public func loadData<T: Decodable>(_ url: String = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=Bhd7FR7uVtBBeI3cnKTINobUEj0jsySE2asXaPtH", completion: @escaping (Result<T, NetworkError>) -> ()) {
        guard let url = URL(string: url) else {
            return completion(Result.failure(.URLError))
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(Result.failure(.DataError))
            }
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(Result.success(decodedData))
            } catch let error {
                completion(Result.failure(.FileDecodingError(error as! DecodingError)))
            }
        }.resume()
    }
    
    public func loadImage(_ url: String, completion: @escaping (Result<Data, NetworkError>) -> ()) {
        guard let url = URL(string: url) else {
            return completion(Result.failure(.URLError))
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(Result.failure(.DataError))
            }
            completion(Result.success(data))
        }.resume()
    }
    
}
