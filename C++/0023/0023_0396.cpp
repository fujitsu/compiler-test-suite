#include <cassert>
#include <typeinfo>

void test1() {
  int *p = new int[5];
  const int *q = p;
  assert(typeid(q) != typeid(p));
}

void test2() {
  int i = 1;
  const bool a = true;
  switch (i) {
  case a: {
    assert(typeid(a) == typeid(const bool));
  }
  }
}

void test3() {
  enum e : int { a, b, c };
  enum en : const int { d = a };
  assert(d == 0);
}

void test4() {
  int i = 5;
  const int *p = new int[i];
  assert(typeid(p) == typeid(const int *));
}

template <int a> struct S {
  int mem;
  void fun() { assert(typeid(a) == typeid(const int)); }
};

void test5() {
  const int a = 1;
  S<a> s;
  s.fun();
}

int main() {
  test1();
  test2();
  test3();
  test4();
  test5();
}
