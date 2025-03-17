#include <cassert>

template<class X,typename ...>struct P{ int mem;};

template<template<typename A,class ...>class E> struct G
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

template<template<class R,typename ...>typename F> void f(int mem)
{
    assert(mem == 2);
};

int main()
{
   G<P> gp{1};
   gp.fun();
   f<P>(2);
}