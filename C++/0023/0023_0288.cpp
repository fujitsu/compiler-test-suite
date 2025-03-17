#include <cassert>

template<template<class A,typename ...>typename T>struct D{ int mem;};

template<template<template<typename X,class ...>typename R>class S>struct F
{
    int mem;
    void fun()
    {
     assert(mem == 3);
    }
}; 

template<template<template<class M,typename ...>class P>typename Q>void f(int mem)
{
    assert(mem == 2);
}; 

int main()
{
    F<D> fd{3};
    fd.fun();
    f<D>(2); 
}