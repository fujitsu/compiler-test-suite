#include <cassert>

template<auto> struct P{ int mem;};

template<template<auto>typename T> void f(int mem)
{
    assert(mem == 2);
};

int main () 
{
    f<P>(2);
}