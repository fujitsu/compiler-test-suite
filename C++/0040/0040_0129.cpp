#include "public1/004.h"
#include "public1/005.h"

struct A
{
    A() : x(0.0), cx(0.0), vx(0.0), cvx(0.0) {}
    double x;
    const double cx;
    volatile double vx;
    const volatile double cvx;
};

void test()
{
    
    int x = 1;
    const int cx = 2;
    volatile int vx = 3;
    const volatile int cvx = 4;
    static_assert((is_same<decltype(x), int>::value), "error");
    static_assert((is_same<decltype(cx), const int>::value), "error");
    static_assert((is_same<decltype(vx), volatile int>::value), "error");
    static_assert((is_same<decltype(cvx), const volatile int>::value), "error");
    
    
    static_assert((is_same<decltype((x)), int&>::value), "error");
    static_assert((is_same<decltype((cx)), const int&>::value), "error");
    static_assert((is_same<decltype((vx)), volatile int&>::value), "error");
    static_assert((is_same<decltype((cvx)), const volatile int&>::value), "error");
    
    
    A a;
    static_assert((is_same<decltype(a.x), double>::value), "error");
    static_assert((is_same<decltype(a.cx), const double>::value), "error");
    static_assert((is_same<decltype(a.vx), volatile double>::value), "error");
    static_assert((is_same<decltype(a.cvx), const volatile double>::value), "error");
    
    
    static_assert((is_same<decltype((a.x)), double&>::value), "error");
    static_assert((is_same<decltype((a.cx)), const double&>::value), "error");
    static_assert((is_same<decltype((a.vx)), volatile double&>::value), "error");
    static_assert((is_same<decltype((a.cvx)), const volatile double&>::value), "error");

    
    extern A&& xvalue();
    extern const A&& cxvalue();
    extern volatile A&& vxvalue();
    extern const volatile A&& cvxvalue();
    
    static_assert((is_same<decltype(xvalue()), A&&>::value), "error");
    static_assert((is_same<decltype(cxvalue()), const A&&>::value), "error");
    static_assert((is_same<decltype(vxvalue()), volatile A&&>::value), "error");
    static_assert((is_same<decltype(cvxvalue()), const volatile A&&>::value), "error");
    
    static_assert((is_same<decltype((xvalue())), A&&>::value), "error");
    static_assert((is_same<decltype((cxvalue())), const A&&>::value), "error");
    static_assert((is_same<decltype((vxvalue())), volatile A&&>::value), "error");
    static_assert((is_same<decltype((cvxvalue())), const volatile A&&>::value), "error");
    
    
    extern A& lvalue();
    extern const A& clvalue();
    extern volatile A& vlvalue();
    extern const volatile A& cvlvalue();
    
    static_assert((is_same<decltype(lvalue()), A&>::value), "error");
    static_assert((is_same<decltype(clvalue()), const A&>::value), "error");
    static_assert((is_same<decltype(vlvalue()), volatile A&>::value), "error");
    static_assert((is_same<decltype(cvlvalue()), const volatile A&>::value), "error");
    
    static_assert((is_same<decltype((lvalue())), A&>::value), "error");
    static_assert((is_same<decltype((clvalue())), const A&>::value), "error");
    static_assert((is_same<decltype((vlvalue())), volatile A&>::value), "error");
    static_assert((is_same<decltype((cvlvalue())), const volatile A&>::value), "error");

    
    extern A prvalue();
    extern const A cprvalue();
    extern volatile A vprvalue();
    extern const volatile A cvprvalue();
    
    static_assert((is_same<decltype(prvalue()), A>::value), "error");
    static_assert((is_same<decltype(cprvalue()), const A>::value), "error");
    static_assert((is_same<decltype(vprvalue()), volatile A>::value), "error");
    static_assert((is_same<decltype(cvprvalue()), const volatile A>::value), "error");
    
    static_assert((is_same<decltype((prvalue())), A>::value), "error");
    static_assert((is_same<decltype((cprvalue())), const A>::value), "error");
    static_assert((is_same<decltype((vprvalue())), volatile A>::value), "error");
    static_assert((is_same<decltype((cvprvalue())), const volatile A>::value), "error");

    
    extern void foo();
    static_assert((is_same<decltype(foo()), void>::value), "error");
    static_assert((is_same<decltype((foo())), void>::value), "error");
}

PASS_CASE_MAIN_FUNCTION
