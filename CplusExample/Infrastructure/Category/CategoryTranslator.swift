//
//  CategoryTranslator.swift
//  CplusExample
//
//  Created by Work on 15/03/2024.
//

import Foundation

struct CategoryTranslator {
    
    static func createCategory(from categoryEntityList: [CategoryEntity]) -> [ProductCategory] {
        return categoryEntityList.map { item in
            let stdName = std.string(item.name)
            return ProductCategory(Int32(item.id), stdName)
        }
    }
}
