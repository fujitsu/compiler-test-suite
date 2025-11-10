#include "public3/004.h"

struct M {};
struct N {};

template<class T>
class A
{
public:
    A(const T&){}
};

template<class... Types>
class B
{
public:
    B(const Types&... args) {}
};

template<class... Types>
class C : public Types...
{
public:
    C(const Types&... args) : Types(args)...{ }
};

template<class... Types>
class D : public A<Types>..., Types...
{
public:
    D(const Types&... args) : A<Types>(args)..., Types(args)... { }
};

void test()
{
    M m;
    N n;

    C<> c0;
    C<M> c1(m);
    C<M, N> c2(m, n);
    
    D<> d0;
    D<M> d1(m);
    D<M, N> d2(m, n);
}

PASS_CASE_MAIN_FUNCTION
