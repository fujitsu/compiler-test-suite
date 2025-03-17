#include <cassert>

template<auto> 
class B 
{ 
    int b; 
};

template<template<auto> class P> 
class X 
{
    public:
    int f = 1; 
};

template<template<auto> class P> 
void fun() 
{
    int f = 1;
    assert(f == 1);
}

int main()
{
    X<B> xb;
    assert(xb.f == 1);
    fun<B>();
}
