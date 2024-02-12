//
//  Item.swift
//  Glance iOS App
//
//  Created by Andrés Blanco on 1/26/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
