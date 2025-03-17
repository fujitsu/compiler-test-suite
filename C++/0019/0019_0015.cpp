#include <cassert>
#include <type_traits>

void test1() {
  if (decltype(auto) x = 1) {
    assert(x == 1);
    assert(true == (std::is_same<int, decltype(x)>::value));
  }
}

void test2() {
  switch (decltype(auto) y = 1) {
  default:
    assert(y == 1);
    assert(true == (std::is_same<int, decltype(y)>::value));
  }
}

void test3() {
  for (decltype(auto) i = 1; i < 2; ++i) {
    assert(true == (std::is_same<int, decltype(i)>::value));
  }
}

void test4() {
  while (decltype(auto) i = 1) {
    assert(true == (std::is_same<int, decltype(i)>::value));
    break;
  }
}

void test5() {
  int cx[2] = {1, 2};
  for (decltype(auto) i : cx) {
    ++i;
    assert(true == (std::is_same<decltype(cx[1]), decltype(i)>::value));
  }
}

void test6() {
  decltype(auto) ptr2 = new int;
  assert(true == (std::is_same<int *, decltype(ptr2)>::value));
}

struct A {
  static auto const x = 1;
  static decltype(auto) y = x;
};
void test7() {
  A a;
  assert(true == (std::is_same<A, decltype(a)>::value));
  assert(true == (std::is_same<const int, decltype(A::y)>::value));
}

void test() {
  test1();
  test2();
  test3();
  test4();
  test5();
  test6();
  test7();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
