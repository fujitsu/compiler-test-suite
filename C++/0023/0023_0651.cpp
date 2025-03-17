template<int A> class B { int b; };

template<template<auto A> class P> 
void fun()
{
    int i = 1;
}

int main()
{
    fun<B>();
}
