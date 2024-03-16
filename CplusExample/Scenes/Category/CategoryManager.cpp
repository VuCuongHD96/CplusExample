//
//  CategoryManager.cpp
//  CplusExample
//
//  Created by Work on 16/03/2024.
//

#include "CategoryManager.hpp"
#include "ProductCategory.hpp"

std::vector<ProductCategory> CategoryManager::findCategoryList(ProductCategory* values, std::string name) {
    std::vector<ProductCategory> foundCategories;
    for (int i = 0; i < 19; ++i) {
        std::size_t foundItem = values[i].name.find(name);
        if (foundItem != std::string::npos) {
            foundCategories.push_back(values[i]);
        }
    }
    return foundCategories;
}
