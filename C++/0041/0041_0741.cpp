#include "public3/004.h"
#include "public3/005.h"

template <class T>
class A {};

template <class ... Types>
class B : Types... {};

template <class ... Types>
class C : virtual A<Types>... {};

template <class ... Types>
class D : public Types..., protected virtual C<Types>... {};

template <class ... Types>
class E : virtual private C<Types...> {};

class M {}; 
class N {}; 

void test()
{
    B<> b0;
    B<M> b1;
    B<M, N> b2;
    
    assert_true((is_base_of< M, B<M> >::value));
    assert_true((is_base_of< M, B<M, N> >::value));
    assert_true((is_base_of< N, B<M, N> >::value));

    C<> c0;
    C<M> c1;
    C<M, N> c2;

    assert_true((is_base_of< A<M>, C<M> >::value));
    assert_true((is_base_of< A<M>, C<M, N> >::value));
    assert_true((is_base_of< A<N>, C<M, N> >::value));

    D<> d0;
    D<M> d1;
    D<M, N> d2;

    assert_true((is_base_of< M, D<M> >::value));
    assert_true((is_base_of< M, D<M, N> >::value));
    assert_true((is_base_of< N, D<M, N> >::value));
    assert_true((is_base_of< C<M>, D<M> >::value));
    assert_true((is_base_of< A<M>, D<M> >::value));
    assert_true((is_base_of< C<M>, D<M, N> >::value));
    assert_true((is_base_of< C<N>, D<M, N> >::value));
    assert_true((is_base_of< A<M>, D<M, N> >::value));
    assert_true((is_base_of< A<N>, D<M, N> >::value));
    
    E<> e0;
    E<M> e1;
    E<M, N> e2;

    assert_true((is_base_of< C<M>, E<M> >::value));
    assert_true((is_base_of< A<M>, E<M> >::value));
    assert_true((is_base_of< C<M, N>, E<M, N> >::value));
    assert_true((is_base_of< A<M   >, E<M, N> >::value));
    assert_true((is_base_of< A<   N>, E<M, N> >::value));
}

PASS_CASE_MAIN_FUNCTION
