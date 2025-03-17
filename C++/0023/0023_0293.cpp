#include <cassert>

template<class X,class Y = int>class P{int p;};

template<template<class A,class B=int>class X> struct C
{
    int p;
    void fun()
    {
     assert(p == 4);
    }
};

template<template<class A,class B=int>class X> void f(int p)
{
    assert(p == 1);
};

int main()
{
   C<P> cp{4};
   cp.fun();
   f<P>(1);
}