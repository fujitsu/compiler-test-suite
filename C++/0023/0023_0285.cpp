#include <cassert>

template<auto,typename X,class Y>struct P{ int mem;};

template<template<auto,class A,typename B>class E> struct G
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

template<template<auto,typename R,class S>typename F> void f(int mem)
{
    assert(mem == 2);
};

int main()
{
    G<P> gp{1};
    gp.fun();
    f<P>(2);
}