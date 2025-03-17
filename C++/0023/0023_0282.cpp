#include <cassert>

template<class X,typename Y,class Z>struct P{ int mem; };
template<template<typename A,class B,typename C>class E> struct G
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};
template<template<typename R,class S,class T>typename F> void f(int mem)
{
    assert(mem == 2);
};

int main()
{
   G<P> gp{1};
   gp.fun();
   f<P>(2);
}