#include <cassert>

template<template<template <template<typename G>class E> class R> class Y>
struct F
{
    int mem = 1;
};

template<template<template <template<class G>typename E> class R> class Y>
void funF()
{
    int a = 1;
    assert(a == 1);
}

template<template<template <class E> typename R> class Y>
struct D
{
    int mem = 1;
};

template<template<template <class E> class R> class Y>
void funD()
{
    int a = 1;
    assert(a == 1);
}

template <template<class D> class T>
struct B{};

template<template<template <template<int G> class E> class R> class Y>
struct Q
{
    int mem = 1;
};

template<template<template <template<int G> class E> class R> class Y>
void funQ()
{
    int a = 1;
    assert(a == 1);
}

template<template<template <int E> class R> class Y>
struct W{};

int main()
{
   D<B> d;
   assert(d.mem == 1);
   F<D> f;
   assert(f.mem == 1);
   Q<W> q;
   assert(q.mem == 1);
   funD<B>();
   funF<D>();
   funQ<W>();
}
