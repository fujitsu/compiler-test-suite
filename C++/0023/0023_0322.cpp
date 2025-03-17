#include <cassert>

template<int V> struct P{ int mem;};

template<template<int N>typename T> void f(int mem)
{
    assert(mem == 2);
};

int main () 
{
    f<P>(2);
}