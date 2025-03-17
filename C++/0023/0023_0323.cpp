#include <cassert>

template<template<int V>typename T>struct D{ int mem;};

template<template<template<int N>typename R>typename S>void f(int mem)
{
    assert(mem == 2);
};

int main()
{
   f<D>(2); 
}