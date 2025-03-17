#include <cassert>

template<int a = 1 > 
class B 
{ 
    int b; 
};

template<template<auto> class P>
void fun() 
{
    int f = 1; 
    assert(f == 1);
}

int main()
{
    fun<B>();
}
