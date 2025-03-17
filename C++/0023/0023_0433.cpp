#include <cassert>
#include <type_traits>
#include <stdint.h>

int main()
{
    {
        enum class A:short{};
        A a{};
        A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum A:int{};
        A a{};
        A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum class A:long{};
        const A a{};
        const A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum class A:char{};
        volatile A a{};
        volatile A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum A:bool{};
        const A a{};
        const A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum A:unsigned char{};
        volatile A a{};
        volatile A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    { 
        enum class A:unsigned char{b};
        volatile A a{};
        volatile A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum class A:unsigned int{b = 1};
        const A a{};
        const A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum A:unsigned long{b};
        const A a{};
        const A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum A:uint32_t{b = 1};
        const A a{};
        const A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    {
        enum A:uint64_t{b = 1};
        A a{};
        A a1 = {};
        assert(static_cast<std::underlying_type<A>::type>(a) == 0);
        assert(static_cast<std::underlying_type<A>::type>(a1) == 0);
    }
    
}
