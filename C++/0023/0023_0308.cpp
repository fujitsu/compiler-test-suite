#include <cassert>

template<template<typename A,typename ...>typename T>struct D{ int mem;};

template<template<template<typename B,typename ...>typename R>typename S>struct F
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