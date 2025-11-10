#include "public1/004.h"

enum E1: char      { X, Y = 2 };
enum class E2: int { X, Y = 256 };

typedef int(*FunPointerType)(double);
typedef int(*ArrPointerType)[10];

template <class T>
void foo(T) {}

void test()
{
    foo(reinterpret_cast<char*>(E1::X));
    foo(reinterpret_cast<FunPointerType>(E1::X));
    foo(reinterpret_cast<ArrPointerType>(E1::X));

    foo(reinterpret_cast<char*>(E2::Y));
    foo(reinterpret_cast<FunPointerType>(E2::Y));
    foo(reinterpret_cast<ArrPointerType>(E2::Y));
}

PASS_CASE_MAIN_FUNCTION
