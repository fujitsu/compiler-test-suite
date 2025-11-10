#include "public3/004.h"
#include "public3/005.h"

void test()
{
    
    {
        typedef char (ArrType)[10];
        typedef int (FunType)(int);
        ArrType arr;
        extern int foo(int);

        auto x1 = []()->int{ return 0; };
        auto x2 = []()->double{ return 0; };
        auto x3 = [](ArrType arr)->char*{ return arr; };
        auto x4 = [](FunType fun)->FunType*{ return fun; };
        auto x5 = []()->void{};

        static_assert((is_same<decltype(x1()), int>::value == true), "not expected type");
        static_assert((is_same<decltype(x2()), double>::value == true), "not expected type");
        static_assert((is_same<decltype(x3(arr)), char*>::value == true), "not expected type");
        static_assert((is_same<decltype(x4(foo)), FunType*>::value == true), "not expected type");
        static_assert((is_same<decltype(x5()), void>::value == true), "not expected type");
    }

    
    {
        typedef char (ArrType)[10];
        typedef int (FunType)(int);
        ArrType arr;
        extern int foo(int);

        auto x1 = []{ return 0; };
        auto x2 = []{ double d = 0.0; return d; }; 
        auto x3 = [](ArrType arr) { return arr; }; 
        auto x4 = [](FunType fun) { return fun; }; 
        auto x5 = []{};

        static_assert((is_same<decltype(x1()), int>::value == true), "not expected type");
        static_assert((is_same<decltype(x2()), double>::value == true), "not expected type");
        static_assert((is_same<decltype(x3(arr)), char*>::value == true), "not expected type");
        static_assert((is_same<decltype(x4(foo)), FunType*>::value == true), "not expected type");
        static_assert((is_same<decltype(x5()), void>::value == true), "not expected type");
    }
}

PASS_CASE_MAIN_FUNCTION
