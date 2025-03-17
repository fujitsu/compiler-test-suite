#include <cassert>

template<template<class A,typename B = A,class C = B>typename T>struct D{ int mem;};

template<template<template<typename X,class Y = X,typename Z = Y>typename R>class S>struct F
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
}; 

template<template<template<class M,typename N = M,typename O = N>class P>typename Q>void f(int mem)
{
    assert(mem == 3);
}; 

int main()
{
    F<D> fd{1};
    fd.fun();
    f<D>(3); 
}