#include <cassert>
#include <typeinfo>

void test1() {
  int *p = new int[5];
  assert(typeid(p) == typeid(int *));
  delete p;
}

void test2() {
  constexpr int a[5] = {1, 2, 3, 4, 5};
  int i = 1;
  switch (i) {
  case *a:
    assert(*a == 1);
  }
}

constexpr int p[5] = {1, 2, 3, 4, 5};
void test3() {
  enum en : int { e = *p };
  assert(e == *p);
}

void test4() {
  int p[5] = {1, 2, 3, 4, 5};
  int *a = new int[*p];
  assert(typeid(a) == typeid(int *));
  delete a;
}

template <int *p> struct B {
  int mem;
  B() { mem = 1; }
};

int a[5] = {1, 2, 3, 4, 5};

void test5() {
  B<a> b;
  assert(b.mem == 1);
}

enum E { f, g };
template <E e> struct B1 {
  int mem;
  B1() { mem = 1; }
};

void test6() {
  B1<f> b;
  assert(b.mem == 1);
}

int main() {
  test1();
  test2();
  test3();
  test4();
  test5();
  test6();
}
