//
//  Friend.swift
//  boots-friends-app
//
//  Created by TinkerTanker on 9/7/22.
//
import Foundation

struct Friends: Identifiable, Codable {
    
    var id = UUID()
    var Name: String
    var Description: String
    var Image: String
    var AttackAbility: Double
    var DefenceAbility: Double
 
    
}

