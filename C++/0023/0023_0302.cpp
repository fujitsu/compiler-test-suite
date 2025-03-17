#include <cassert>

template<typename T> struct B{ int mem;};

template<template<typename> typename T> struct D
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};

int main() 
{
    D<B> db{1};
    db.fun();
}