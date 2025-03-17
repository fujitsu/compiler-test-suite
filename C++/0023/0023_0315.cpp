#include <cassert>

template<typename T> struct P{ int mem;};

template<template<typename X>typename T> void f(int mem)
{
    assert(mem == 2);
};

int main () 
{
    f<P>(2);
}