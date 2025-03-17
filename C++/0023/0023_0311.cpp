#include <cassert>

template<int N> struct P{ int mem;};

template<template<int V>typename T> struct D
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};


int main () 
{
    D<P> dp{1};
    dp.fun();
}