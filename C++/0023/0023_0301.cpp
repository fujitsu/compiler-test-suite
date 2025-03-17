#include <cassert>

template<template<int X>class T> struct D{ int mem;};

template<template<template<int Y>class R>class S> void f(int mem)
{
    assert(mem == 2);
};
template<template<template<int G>class P>class Q> struct E
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};


int main()
{
    f<D>(2);
    E<D> ed{1};
    ed.fun();
}