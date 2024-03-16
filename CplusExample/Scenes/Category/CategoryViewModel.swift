//
//  CategoryViewModel.swift
//  CplusExample
//
//  Created by Work on 16/03/2024.
//

import Foundation

struct CategoryViewModel {
    
    let usecase = CategoryUseCase()
    var categoryList: [ProductCategory] = []
    
    mutating func fetchCategoryList() {
        categoryList = usecase.getCategoryList()
    }
}
