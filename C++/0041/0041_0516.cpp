#include "public3/004.h"
#include <initializer_list>

int flag = 0;

class A
{
public:
    A(std::initializer_list<int>) { flag = 1; } 
    A(int, int, int) { flag = 2; }              
    A() { flag = 3; }                           
};

class B
{
public:
    B(std::initializer_list<double>) { flag = 4; } 
    B(int, int, int) { flag = 5; }                 
    
    B(std::initializer_list<A>) { flag = 6; }      
    B(A, A) { flag = 7; }                          
};

class C
{
public:
    C(std::initializer_list<B>) { flag = 8; } 
    C(int, int, int) { flag = 9; }            
    operator A(){ return A(); }
};

void test()
{
    {
        A a {1, 2, 3};     
        assert(flag == 1);
        
        C c {1, 2, 3};      
        assert(flag == 9);

        B b1 {1, 2, 3};     
        assert(flag == 4);
        B b2 {c, {1, 2, 3}};
        assert(flag == 6);

        A a2 {};            
        assert(flag == 3);
    }
    {
        A a = {1, 2, 3};     
        assert(flag == 1);
        
        C c = {1, 2, 3};      
        assert(flag == 9);

        B b1 = {1, 2, 3};     
        assert(flag == 4);
        B b2 = {c, {1, 2, 3}};
        assert(flag == 6);

        A a2 = {};            
        assert(flag == 3);
    }
}

PASS_CASE_MAIN_FUNCTION
