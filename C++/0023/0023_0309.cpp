#include <cassert>

template<template<auto>typename T>struct D{ int mem;};

template<template<template<auto>typename R>typename S>struct F
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