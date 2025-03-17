#include <cassert>

template<template<class A,class ...>class T> struct D{ int mem;};

template<template<template<class B,class ...>class R>class S> void f(int mem)
{
    assert(mem == 2);
};

template<template<template<class C,class ...>class P>class Q> struct E
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