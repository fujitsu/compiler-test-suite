#include "public3/004.h"

enum color { red };
enum food : char { bread };

namespace ns_test
{
    enum color { green=20 };
    enum food : char { milk, biscuit };
}

class cls_test
{
public:
    enum color { blue };
    enum food : char { egg };
};

void foo(int) {}

void test()
{
    foo(red);
    foo(bread);
    foo(ns_test::green);
    foo(ns_test::milk);
    foo(cls_test::blue);
    foo(cls_test::egg);
}

PASS_CASE_MAIN_FUNCTION
