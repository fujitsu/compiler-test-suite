#include <cassert>

template<class ... Types> class B { int b; };

template<class T> class X;
template<template<typename  ...T> class P,class ...R> 
class X<P<R...>> 
{ 
    public:int f = 1;
};

template<template<class ...> class P,class ...R> 
void fun(P<R...> & a) 
{ 
    int f = 1;
    assert(f == 1);
}

int main()
{
      X<B<int>> xb;
      assert(xb.f == 1);

      X<B<int,double>> xb1;
      assert(xb1.f == 1);
      
      B<int,double> b;
      fun(b);      
}
