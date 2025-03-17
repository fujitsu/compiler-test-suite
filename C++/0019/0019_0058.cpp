#include <cassert>

template <class T1, class T2 = int> T2 vt = T1(2);

void test() {
  assert((vt<int> == 2));
  assert(((void *)&vt<int, int> == (void *)&vt<int>));
  assert((vt<int, double> == 2.));
  assert(((void *)&vt<int, double> != (void *)&vt<int>));
}

int main() { test(); }
