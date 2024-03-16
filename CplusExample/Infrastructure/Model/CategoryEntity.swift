//
//  CategoryEntity.swift
//  CplusExample
//
//  Created by Work on 15/03/2024.
//

import Foundation

struct CategoryEntity: Codable {
    let id: Int
    let name: String
}

struct CategoryResponse: Codable {
    let categories: [CategoryEntity]
}
