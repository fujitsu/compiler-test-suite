#include <cassert>
#include <cstdlib>

#define REG_FUNC(foo, i)  void foo##i()  { assert(x == i); --x; }

int x = 32;

REG_FUNC(func, 1)
REG_FUNC(func, 2)
REG_FUNC(func, 3)
REG_FUNC(func, 4)
REG_FUNC(func, 5)
REG_FUNC(func, 6)
REG_FUNC(func, 7)
REG_FUNC(func, 8)
REG_FUNC(func, 9)
REG_FUNC(func, 10)
REG_FUNC(func, 11)
REG_FUNC(func, 12)
REG_FUNC(func, 13)
REG_FUNC(func, 14)
REG_FUNC(func, 15)
REG_FUNC(func, 16)
REG_FUNC(func, 17)
REG_FUNC(func, 18)
REG_FUNC(func, 19)
REG_FUNC(func, 20)
REG_FUNC(func, 21)
REG_FUNC(func, 22)
REG_FUNC(func, 23)
REG_FUNC(func, 24)
REG_FUNC(func, 25)
REG_FUNC(func, 26)
REG_FUNC(func, 27)
REG_FUNC(func, 28)
REG_FUNC(func, 29)
REG_FUNC(func, 30)
REG_FUNC(func, 31)
REG_FUNC(func, 32)

void test() {
}

int main() {
    test();
}
