#include "public1/004.h"
#include "public1/005.h"

struct Base {};
struct Derived : public Base {};

static Base __base_lvalue;
static Derived __derived_lvalue;

int foo(int) { return 0; }
typedef int(fun_type)(int);

static void avoid_warning(Base&, Base&) {}
static void avoid_warning(int (&)[5]) {}
static void avoid_warning(int (&)(int)) {}
static void avoid_warning(double&, double&) {}

namespace case1
{
    template<typename T>
        T prvalue(typename enable_if<is_same<T, Base>::value, void*>::type = 0) { return __base_lvalue; }
    template<typename T>
        T prvalue(typename enable_if<is_same<T, Derived>::value, void*>::type = 0) { return __derived_lvalue; }
    template<typename T>
        T&& xvalue(typename enable_if<is_same<T, Base>::value, void*>::type = 0) { return static_cast<T&&>(__base_lvalue); }
    template<typename T>
        T&& xvalue(typename enable_if<is_same<T, Derived>::value, void*>::type = 0) { return static_cast<T&&>(__derived_lvalue); }

    struct HasArray { int array[5]; };

    void test()
    {
        
        Base &&r1 = xvalue<Base>();
        Base &&r2 = xvalue<Derived>();
        avoid_warning(r1, r2);

        
        Base&& r3 = prvalue<Base>();
        Base&& r4 = prvalue<Derived>();
        avoid_warning(r3, r4);

        
        int (&&arr)[5] = HasArray().array;
        avoid_warning(arr);

        
        int (&&fun)(int) = foo;
        avoid_warning(fun);
    }
}

namespace case2
{
    template<typename T>
    struct ConvertTo { operator T(); };

    template<> struct ConvertTo<Base&&>    { operator Base&&()    { return static_cast<Base&&>(__base_lvalue); }       };
    template<> struct ConvertTo<Derived&&> { operator Derived&&() { return static_cast<Derived&&>(__derived_lvalue); } };
    template<> struct ConvertTo<Base>      { operator Base()      { return __base_lvalue; }                            };
    template<> struct ConvertTo<Derived>   { operator Derived()   { return __derived_lvalue; }                         };
    template<> struct ConvertTo<fun_type&> { operator fun_type&() { return foo; }                                      };

    void test()
    {
        
        Base&& r1 = ConvertTo<Base&&>();
        Base&& r2 = ConvertTo<Derived&&>();
        avoid_warning(r1, r2);

        
        Base&& r3 = ConvertTo<Base>();
        Base&& r4 = ConvertTo<Derived>();
        avoid_warning(r3, r4);

        
        int (&&fun)(int) = ConvertTo<int(&)(int)>();
        avoid_warning(fun);
        
        
        
    }
}

namespace case3
{
    void test()
    {
        int n = 2;
        double&& r1 = 2; 
        double&& r2 = n; 
        avoid_warning(r1, r2);

        
        
        
        
        
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
