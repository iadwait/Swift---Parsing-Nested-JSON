//
//  UserModel.swift
//  Parsing Nested JSON
//
//  Created by Adwait Barkale on 18/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation

struct User: Codable {
    
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
    
}

struct Address: Codable {
    
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geoLocation: Geo
    
    
    private enum CodingKeys: String,CodingKey{
        
        case street
        case suite
        case city
        case zipcode
        case geoLocation = "geo"
        
    }
}

struct Geo: Codable {
    
    let latitude: String
    let longitude: String
    
    //In Coding Key you have to write all cases even if u want to change only 1
    private enum CodingKeys: String,CodingKey{
        
        case latitude = "lat"
        case longitude = "lng"
        
    }
}

struct Company: Codable {
    
    let name: String
    let catchPhrase: String
    let bs: String
    
}
