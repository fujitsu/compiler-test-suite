#include "public3/004.h"
#include <initializer_list>

class String
{
public:
    String(const char*) {}
};

struct S
{
    S(std::initializer_list<double>){} 
    S(const String&){}                 
};

void test()
{
    {
        const S& r1 { 1, 2, 3.0 };    
        const S& r2 { "Spinach" };    
        
        const int& i1 { 1 };          
        
        const int (&iar)[2] { 1, 2 }; 
    }
    {
        const S& r1 = { 1, 2, 3.0 };    
        const S& r2 = { "Spinach" };    
        
        const int& i1 = { 1 };          
        
        const int (&iar)[2] = { 1, 2 }; 
    }
}

PASS_CASE_MAIN_FUNCTION
