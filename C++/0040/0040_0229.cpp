#include "public1/004.h"
#include "002.h"

struct Object {};

template <class T> T foo1(T&&);
template <class T> T foo2(const T&&);
template <class T> T foo3(volatile T&&);
template <class T> T foo4(const volatile T&&);
void test()
{
    
    assert((is_same<decltype(foo1(lvalue<Object>())), Object&>::value == true));
    assert((is_same<decltype(foo1(lvalue<const Object>())), const Object&>::value == true));
    assert((is_same<decltype(foo1(lvalue<volatile Object>())), volatile Object&>::value == true));
    assert((is_same<decltype(foo1(lvalue<const volatile Object>())), const volatile Object&>::value == true));

    
    assert((is_same<decltype(foo1(xvalue<Object>())), Object>::value == true));
    assert((is_same<decltype(foo1(xvalue<const Object>())), const Object>::value == true));
    assert((is_same<decltype(foo1(xvalue<volatile Object>())), volatile Object>::value == true));
    assert((is_same<decltype(foo1(xvalue<const volatile Object>())), const volatile Object>::value == true));
    assert((is_same<decltype(foo1(prvalue<Object>())), Object>::value == true));
    assert((is_same<decltype(foo1(prvalue<const Object>())), const Object>::value == true));
    assert((is_same<decltype(foo1(prvalue<volatile Object>())), volatile Object>::value == true));
    assert((is_same<decltype(foo1(prvalue<const volatile Object>())), const volatile Object>::value == true));
    
    
    assert((is_same<decltype(foo2(xvalue<Object>())), Object>::value == true));
    assert((is_same<decltype(foo2(xvalue<const Object>())), Object>::value == true));
    assert((is_same<decltype(foo2(xvalue<volatile Object>())), volatile Object>::value == true));
    assert((is_same<decltype(foo2(xvalue<const volatile Object>())), volatile Object>::value == true));
    assert((is_same<decltype(foo2(prvalue<Object>())), Object>::value == true));
    assert((is_same<decltype(foo2(prvalue<const Object>())), Object>::value == true));
    assert((is_same<decltype(foo2(prvalue<volatile Object>())), volatile Object>::value == true));
    assert((is_same<decltype(foo2(prvalue<const volatile Object>())), volatile Object>::value == true));
}

PASS_CASE_MAIN_FUNCTION
