template<int a = 1 > 
class B 
{ 
    int b; 
};

template<template<auto T> class P> 
class X
{ 
    public:
    int f = 1; 
};

int main()
{
    X<B> xb;
}
