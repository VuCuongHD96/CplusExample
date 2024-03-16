//
//  ProductCategory.hpp
//  CplusExample
//
//  Created by Work on 15/03/2024.
//

#ifndef Genre_hpp
#define Genre_hpp

#include <string>

class ProductCategory {
public:
    int id;
    std::string name;
    ProductCategory(int id, const std::string& name);
};

#endif /* Genre_hpp */
