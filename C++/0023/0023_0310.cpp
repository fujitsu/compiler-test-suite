#include <cassert>

template<auto> struct P{ int mem;};

template<template<auto>typename T> struct D
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