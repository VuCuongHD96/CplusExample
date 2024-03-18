//
//  ProductCategory.hpp
//  CplusExample
//
//  Created by Work on 15/03/2024.
//

#ifndef ProductCategory_hpp
#define ProductCategory_hpp

#include <string>

struct ProductCategory {
public:
    int id;
    std::string name;
    ProductCategory(int id, const std::string& name);
};

#endif /* ProductCategory_hpp */
