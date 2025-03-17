#include <cassert>

template<template<typename A,typename ...>typename T>struct D{ int mem;};

template<template<template<typename B,typename ...>typename R>typename S>void f(int mem)
{
    assert(mem == 2);
}; 

int main()
{
   f<D>(2); 
}