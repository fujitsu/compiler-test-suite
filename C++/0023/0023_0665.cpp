template<int> class B { int b; };
template<template<auto> class P> class X { int f; };

int main()
{
    X<B> xb;
}
