//
//  Logic.hpp
//  CplusExample
//
//  Created by Work on 13/03/2024.
//

#ifdef __cplusplus
extern "C"
{
#endif

// MARK: - Function
void helloFromCPlus();

// MARK: - Struct
struct Human {
    int age;
    
    void addAge(int yearsToAdd);
};

#ifdef __cplusplus
}
#endif
