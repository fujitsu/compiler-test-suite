#include <cassert>

template<template<int V>typename T>struct D{ int mem;};

template<template<template<int N>typename R>typename S>struct F
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};


int main()
{
   F<D> fd{1};
   fd.fun(); 
}