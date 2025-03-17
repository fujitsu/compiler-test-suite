#include <cassert>
#include <typeinfo>

void test1() {
  int i = 5;
  int *p = new (int[5]);
  assert(typeid(p) == typeid(int *));
  delete[] p;
}

void test2() {
  int i = 3;
  const int j = 1;
  const int k = 2;
  switch (i) {
  case j:
    assert(j == 1);
    break;
  case k:
    assert(j == 2);
  default:
    assert(i == 3);
  }
}

void test3() {
  enum : int { a, b, c };
  enum e : const int { en = a };
  assert(en == 0);
}

void test4() {
  int i = 5;
  int *p = new int[i];
  assert(typeid(p) == typeid(int *));
}

int i = 1;
template <const int &u> struct B {
  int mem;
  void fun() { assert(typeid(decltype(u)) == typeid(i)); }
};
void test5() {
  B<i> b;
  b.fun();
}

int main() {
  test1();
  test2();
  test3();
  test4();
  test5();
}
