#include <cassert>
#include <type_traits>
#include <stdint.h>

int main()
{
    {
        enum A:short {};
        A a = {A{1}};
        assert(static_cast<std::underlying_type<A>::type>(a) == 1);
    }
    {
        enum class B:int {};
        B b{2};
        assert(static_cast<std::underlying_type<B>::type>(b) == 2);
    }
    {
        enum C:long {a};
        C c = {C{3}};
        assert(static_cast<std::underlying_type<C>::type>(c) == 3);
    }
    {
        enum D:char {a = 1};
        D d{'a'};
        assert(static_cast<std::underlying_type<D>::type>(d) == 'a');
    }
    {
        enum class E:bool{a};
        E e = {E{true}};
        assert(static_cast<std::underlying_type<E>::type>(e) == true);
    }
    {
        enum class F : unsigned char {a = 'a'};
        F f{'b'};
        assert(static_cast<std::underlying_type<F>::type>(f) == 'b');
    }
    {
        enum G:unsigned int {};
        const G g = {G{1}};
        assert(static_cast<std::underlying_type<G>::type>(g) == 1);
    }
    {
        enum class H :unsigned long {};
        volatile H h = {H{2}};
        assert(static_cast<std::underlying_type<H>::type>(h) == 2);
    }
    {
        enum class I :uint32_t {a = 1};
        const I i = {I{2}};
        assert(static_cast<std::underlying_type<I>::type>(i) == 2);
    }
    {
        enum class J :uint64_t {a};
        volatile J j{2};
        assert(static_cast<std::underlying_type<J>::type>(j) == 2);
    }
}
