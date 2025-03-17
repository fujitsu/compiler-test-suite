#include <cassert>

template<template<template <template<int G> class ...> class R> class ...>
struct F{int mem = 1 ;};

template<template<template <template<int G> class ...> class R> class ...>
void funF()
{
    int a = 1;
    assert(a == 1);
}

template<template<template <auto E> class... > class Y>
struct D{int mem = 1;};

int main()
{
   F<D> b;
   assert(b.mem == 1);

   funF<D>();
}
