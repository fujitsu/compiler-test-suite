#include <cassert>

template<template<typename A,typename C=A>typename T>struct D{ int mem;};

template<template<template<typename B,typename P=B>typename R>typename S>void f(int mem)
{
    assert(mem == 2);
}; 

int main()
{
   f<D>(2); 
}