#include <cassert>

template<typename T,typename ...> struct P{ int mem;};
 
template<template<typename T1, typename ...>typename T> struct B
{
    int mem;
    void fun()
    {
     assert(mem == 1);
    }
};
;

int main()
{
   B<P> be{1};
   be.fun(); 
}