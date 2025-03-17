#include <cassert>

template<class ...A>struct P{ int mem;};

template<template<class ...>class T> struct C
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

template<template<class ...>class T> void f(int mem)
{
    assert(mem == 2);
};

int main()
{
   C<P> cp{1};
   cp.fun();
   f<P>(2);
}