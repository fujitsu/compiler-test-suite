#include <cassert>

template<template<auto,class A,typename ...>typename T>struct D{ int mem;};

template<template<template<auto,typename X,class ...>typename R>class S>struct F
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
}; 

template<template<template<auto,class M,typename ...>class P>typename Q>void f(int mem)
{
    assert(mem == 3);
};

int main()
{
    F<D> fd{1};
    fd.fun();
    f<D>(3); 
}