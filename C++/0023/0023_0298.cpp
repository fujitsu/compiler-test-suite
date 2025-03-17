#include <cassert>

template<auto>struct P{ int mem;};

template<template<auto >class T> struct C
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

template<template<auto >class T> void f(int mem)
{
    assert(mem == 2);
};

int main()
{
   C<P> cp{1};
   cp.fun();
   f<P>(2);
}