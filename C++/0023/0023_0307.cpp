#include <cassert>

template<template<typename A,typename C=A>typename T>struct D{ int mem;};

template<template<template<typename B,typename P=B>typename R>typename S>struct F
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