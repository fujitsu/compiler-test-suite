#include <cassert>

template<template<auto>typename T>struct D{int mem;};

template<template<template<auto>typename R>typename S>void f(int mem)
{
    assert(mem == 2);
}; 

int main()
{
   f<D>(2); 
}