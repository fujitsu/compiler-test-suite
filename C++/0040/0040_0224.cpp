#include "public1/004.h"

struct one { char __;    };
struct two { char __[2]; };

one __test(int&);
two __test(int&&);


namespace case1
{
    typedef int(fun_type)(int);
    one __test(fun_type&);
    two __test(fun_type&&);
    
    struct Object { operator fun_type&&(); };
    void test()
    {
        assert(sizeof(__test((fun_type&&)Object())) == sizeof(one) );
    }
}


namespace case2
{
    struct Object { operator int &&(); };
    void test()
    {
        assert(sizeof(__test( (int&&)Object() )) == sizeof(two));
    }
}


namespace case3
{
    struct Object { operator int (); };
    void test()
    {
        assert(sizeof(__test( (int)Object() )) == sizeof(two));
    }
}


namespace case4
{
    struct Object { operator int (); };
    void test()
    {
        assert(sizeof(__test((const int)Object())) == sizeof(two));
        assert(sizeof(__test((volatile int)Object())) == sizeof(two));
        assert(sizeof(__test((const volatile int)Object())) == sizeof(two));
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
    case4::test();
}

PASS_CASE_MAIN_FUNCTION
