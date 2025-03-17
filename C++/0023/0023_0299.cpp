#include <cassert>

template<template<auto>class T> struct D{ int mem;};

template<template<template<auto>class R>class S> void f(int mem)
{
    assert(mem == 2);
};

template<template<template<auto>class P>class Q> struct E
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