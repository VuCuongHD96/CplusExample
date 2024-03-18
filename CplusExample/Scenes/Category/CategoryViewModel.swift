//
//  CategoryViewModel.swift
//  CplusExample
//
//  Created by Work on 16/03/2024.
//

import Foundation

struct CategoryViewModel {
    
    let usecase = CategoryUseCase()
    private var originCategoryList: [ProductCategory] = []
    var filterCategoryList: [ProductCategory] = []
    
    mutating func fetchCategoryList() {
        originCategoryList = usecase.getCategoryList()
        filterCategoryList = originCategoryList
    }

    mutating func findCategory(name: String) {
        if name.isEmpty {
            filterCategoryList = originCategoryList
        } else {
            let productCategoryPointer = UnsafeMutablePointer<ProductCategory>.allocate(capacity: originCategoryList.count)
            productCategoryPointer.initialize(from: originCategoryList, count: originCategoryList.count)
            let sdtName = std.string(name);
            let foundCategoryArray = CategoryManager.findCategoryList(productCategoryPointer, sdtName)
            filterCategoryList = foundCategoryArray.map {
                ProductCategory($0.id, $0.name)
            }
        }
    }
}
