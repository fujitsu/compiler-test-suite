#include <cassert>

template <class T> constexpr T vt = T(0);

void test() { assert(vt<int> == 0); }

int main() { test(); }
