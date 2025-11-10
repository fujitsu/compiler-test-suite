#include "public1/004.h"
#include "public1/005.h"

typedef unsigned long size_t;

void* operator new  (size_t, void* __p) {return __p;}
void  operator delete  (void*, void*) {}

void test()
{
    
    auto p1 = new auto(1);
    static_assert((is_same<decltype(p1), int*>::value), "error");
    assert(*p1 == 1);
  
    
    auto p2 = new (p1) auto(2);
    static_assert((is_same<decltype(p2), int*>::value), "error");
    assert(*p1 == 2);

    
    auto p3 = new (auto)('3');
    static_assert((is_same<decltype(p3), char*>::value), "error");
    assert(*p3 == '3');
  
    
    auto p4 = new (p3) (auto)('4');
    static_assert((is_same<decltype(p4), char*>::value), "error");
    assert(*p4 == '4');

    delete p1;
    delete p3;
    
    struct A {};
    A a;
    auto p5 = new auto(a);
    static_assert((is_same<decltype(p5), A*>::value), "error");
    delete p5;
}

PASS_CASE_MAIN_FUNCTION
