#include "public1/004.h"
#include "002.h"

namespace case1
{
    one __test(const int&);
    two __test(const int&&);
    struct Object
    {
        one operator<<(int);
        one foo() &;
        two foo() &&;
    };
    two operator<<(Object&&, char);
    void test()
    {
        assert(sizeof(__test(lvalue<int>())) == sizeof(one));
        assert(sizeof(__test(xvalue<int>())) == sizeof(two));
        assert(sizeof(__test(prvalue<int>())) == sizeof(two));
        
        assert(sizeof(lvalue<Object>().foo()) == sizeof(one));
        assert(sizeof(xvalue<Object>().foo()) == sizeof(two));
        assert(sizeof(prvalue<Object>().foo()) == sizeof(two));
        
        assert(sizeof(lvalue<Object>()<<0) == sizeof(one));
        assert(sizeof(xvalue<Object>()<<0) == sizeof(one));
        assert(sizeof(prvalue<Object>()<<0) == sizeof(one));
        assert(sizeof(lvalue<Object>()<<'0') == sizeof(one));
        assert(sizeof(xvalue<Object>()<<'0') == sizeof(two));
        assert(sizeof(prvalue<Object>()<<'0') == sizeof(two));
    }
}

namespace case2
{
    one __test(int(&)(int));
    two __test(int(&&)(int));
    int foo(int);
    void test()
    {
        assert(sizeof(__test(foo)) == sizeof(one));
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
