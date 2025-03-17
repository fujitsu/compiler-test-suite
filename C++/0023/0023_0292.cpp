#include <cassert>

template<class X,class Y>struct P{ int mem;};

template<template<class A,class B>class T> struct C
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

template<template<class A,class B>class T> void f(int mem)
{
    assert(mem == 3);
};

int main()
{
   C<P> cp{1};
   cp.fun();
   f<P>(3);
}