#include <exception>
#include <utility>
#include "./004.h"

void test()
{
    std::exception_ptr p1;     
    std::exception_ptr p2(p1); 
    p1 = p2;                   
    assert( p1 == p2 );        

    std::swap(p1, p2);         
    
    
    std::exception_ptr p3 = nullptr;
    std::exception_ptr p4(nullptr);
    assert( p3 == nullptr );
    assert( p4 == nullptr );
    assert( std::exception_ptr(nullptr) == nullptr );
    p4 = nullptr;
    assert( p4 == nullptr );
    assert( nullptr == p4 );
    
    std::exception_ptr p5 {}; 
    assert( p5 == nullptr );
    
    assert( !bool(p1) ); 
    assert( !p1 );
}

PASS_CASE_MAIN_FUNCTION
