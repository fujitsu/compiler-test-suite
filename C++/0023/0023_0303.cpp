#include <cassert>

template<typename T,typename S> struct P{ int mem;};

template<template<typename X,typename Y>typename T> struct D
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