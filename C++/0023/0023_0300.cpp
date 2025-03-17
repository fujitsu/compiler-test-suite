#include <cassert>

template<int V>struct P{ int mem;};

template<template<int N>class T> struct C
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

template<template<int X >class T> void f(int mem)
{
    assert(mem == 2);
};

int main()
{
   C<P> cp{1};
   cp.fun();
   f<P>(2);
}