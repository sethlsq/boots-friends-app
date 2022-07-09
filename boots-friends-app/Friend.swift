//
//  Friend.swift
//  boots-friends-app
//
//  Created by TinkerTanker on 9/7/22.
//
import Foundation

struct Friend: Identifiable, Codable {
    
    var id = UUID()
    var name: String
    var description: String
    var portrait: String
    var attack: Double
    var defense: Double
 
    
}

