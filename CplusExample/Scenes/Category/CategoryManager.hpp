//
//  CategoryManager.hpp
//  CplusExample
//
//  Created by Work on 16/03/2024.
//

#ifndef CategoryManager_hpp
#define CategoryManager_hpp

#include <stdio.h>
#include <string>
#include "ProductCategory.hpp"
#include <algorithm>
#include <iostream>

struct CategoryManager {
    static std::vector<ProductCategory> findCategoryList(ProductCategory* values, std::string name);
};

#endif /* CategoryManager_hpp */
