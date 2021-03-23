//
//  NASADataDecoding.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import Foundation

// MARK: - NASAModel
public struct NASAModel: Codable {
    public let photos: [Photo]
}

// MARK: - Photo
public struct Photo: Codable, Identifiable {
    public let id: Int
    public let camera: Camera
    public let imgSrc: String
    public let earthDate: String
    public let rover: Rover

    public enum CodingKeys: String, CodingKey {
        case id
        case camera
        case imgSrc = "img_src"
        case earthDate = "earth_date"
        case rover
    }
}

// MARK: - Camera
public struct Camera: Codable {
    public let id: Int
    public let fullName: FullName

    public enum CodingKeys: String, CodingKey {
        case id
        case fullName = "full_name"
    }
}

public enum FullName: String, Codable {
    case chemistryAndCameraComplex = "Chemistry and Camera Complex"
    case frontHazardAvoidanceCamera = "Front Hazard Avoidance Camera"
    case mastCamera = "Mast Camera"
    case navigationCamera = "Navigation Camera"
    case rearHazardAvoidanceCamera = "Rear Hazard Avoidance Camera"
}

// MARK: - Rover
public struct Rover: Codable {
    public let id: Int
    public let name: RoverName
}

public enum RoverName: String, Codable {
    case curiosity = "Curiosity"
}
