#include "public1/004.h"
#include "002.h"

struct Base {};
struct Derived : public Base {};

typedef Base Object;

namespace case1
{
    void test()
    {
        
        assert(sizeof(__test(static_cast<fun_type&&>(xvalue<fun_type>()))) == sizeof(one));
        assert(sizeof(__test(static_cast<fun_type&&>(lvalue<fun_type>()))) == sizeof(one));

        
        assert(sizeof(__test(static_cast<Object&&>(prvalue<Object>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<Object&&>(xvalue<Object>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<Object&&>(lvalue<Object>()))) == sizeof(two));
    }
}

namespace case2
{
    void test()
    {
        
        assert(sizeof(__test(static_cast<Derived&&>(lvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<Derived&&>(xvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const Derived&&>(lvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const Derived&&>(xvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<volatile Derived&&>(lvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<volatile Derived&&>(xvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(lvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(xvalue<Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const Derived&&>(lvalue<const Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const Derived&&>(xvalue<const Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<volatile Derived&&>(lvalue<volatile Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<volatile Derived&&>(xvalue<volatile Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(lvalue<const Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(xvalue<const Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(lvalue<volatile Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(xvalue<volatile Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(lvalue<const volatile Base>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<const volatile Derived&&>(xvalue<const volatile Base>()))) == sizeof(two));
        
        
        
        
        
        
        
        
        
    }
}

namespace case3
{
    void test()
    {
        assert(sizeof(__test(static_cast<Base&&>(xvalue<Derived>()))) == sizeof(two));
        assert(sizeof(__test(static_cast<Base&&>(lvalue<Derived>()))) == sizeof(two));
        
        
        

        
        
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
