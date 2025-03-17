#include <cassert>

template<template<template <template<class G> class ...> class R> class ...>
struct F{int a = 1;};

template<template<template <template<class G> class ...> class R> class ...>
void funF()
{
    int a = 1;
    assert(a == 1);
}

template<template<template <class E> class... > class Y>
struct D{int a;};

template<template<template <template<int G> typename ...> class R> class ...>
struct Q{int a = 1;};

template<template<template <template<int G> typename ...> class R> class ...>
void funQ()
{
    int a = 1;
    assert(a == 1);
}

template<template<template <int E> class ...> class Y>
struct W{int a;};

int main()
{
   F<D> b;
   assert(b.a == 1);
   Q<W> q;
   assert(q.a == 1);
   funF<D>();
   funQ<W>();
}
