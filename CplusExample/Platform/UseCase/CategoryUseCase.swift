//
//  CategoryUseCase.swift
//  CplusExample
//
//  Created by Work on 15/03/2024.
//

import Foundation

struct CategoryUseCase {
    
    let categoryRepository = CategoryService()
    
    func getCategoryList() -> [ProductCategory] {
        let categoryList = categoryRepository.getCategoryList()
        return CategoryTranslator.createCategory(from: categoryList)
    }
}

