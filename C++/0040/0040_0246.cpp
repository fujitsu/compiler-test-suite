#include "public1/004.h"

const bool bool_true = true;
const int  int_true  = 1;

static_assert(true, "no error");
static_assert(bool_true, "no error");
static_assert(1, "no error");
static_assert(int_true, "no error");
static_assert("true", "no error");
namespace ns_test
{
    static_assert(true, "no error");
    static_assert(bool_true, "no error");
    static_assert(1, "no error");
    static_assert(int_true, "no error");
    static_assert("true", "no error");
}

void foo()
{
    static_assert(true, "no error");
    static_assert(bool_true, "no error");
    static_assert(1, "no error");
    static_assert(int_true, "no error");
    static_assert("true", "no error");
}

class cls_test
{
    static const bool bool_false = false;
    static const int  int_false  = 0;
    static_assert(true, "no error");
    static_assert(bool_true, "no error");
    static_assert(1, "no error");
    static_assert(int_true, "no error");
    static_assert("true", "no error");
};
const bool cls_test::bool_false;
const int  cls_test::int_false;

void test() {}

PASS_CASE_MAIN_FUNCTION
