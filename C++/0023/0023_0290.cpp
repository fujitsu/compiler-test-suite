#include <cassert>

template<template<int N>typename T>struct D{ int mem;};

template<template<template<int V>typename R>class S>struct F
{   
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

template<template<template<int A>class P>typename Q>void f(int mem)
{
    assert(mem == 5);
}; 

int main()
{
    F<D> fd{1};
    fd.fun();
    f<D>(5); 
}