#include "public3/004.h"
#include "public3/005.h"

void test()
{
    float x, &r = x;

    
    [=]() mutable {
        static_assert((is_same<decltype(x), float>::value == true), "not expected type");
        static_assert((is_same<decltype((x)), float&>::value == true), "not expected type");
        
        static_assert((is_same<decltype((r)), float&>::value == true), "not expected type");
    }();

    
    [=] {
        static_assert((is_same<decltype(x), float>::value == true), "not expected type");
        static_assert((is_same<decltype((x)), const float&>::value == true), "not expected type");
        
        static_assert((is_same<decltype((r)), const float&>::value == true), "not expected type");
    }();
}

PASS_CASE_MAIN_FUNCTION
