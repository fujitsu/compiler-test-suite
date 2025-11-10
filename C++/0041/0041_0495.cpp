#include "public3/004.h"
#include <initializer_list>

class A
{
public:
    A(std::initializer_list<int>) {}
};

class B : public A
{
public:
    B() : A{1, 2, 3} {} 
};

class C
{
    A a;
public:
    C() : a{1, 'a', false} {} 
};

template <class ...Types>
class D : Types...
{
public:
  
  D() {}

};

template <class T>
class E
{
public:
  E() = default;
    E(std::initializer_list<T>) {}
};

void test()
{
  
  D< E<char> > d;
}

PASS_CASE_MAIN_FUNCTION
