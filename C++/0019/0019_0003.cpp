#include <cassert>

void test1() {
  constexpr char16_t a = 10;
  int *ptr = new int(a);
  delete ptr;
}

void test2() {
  enum { a, b, c };
  int i = 42;
  switch (i) {
  case b:
  default:
    break;
  }
}

void test3() {
  enum : int { a, b, c };
  enum en : const int {
    en_a = a,
  };
}

void test4() {
  struct X {
    int i : 2;
  };
  constexpr X _x = {1};
  int arr[_x.i];
}

template <int> struct X {};
void test5() {
  constexpr bool a = true;
  X<a> _x;
}

void test() {
  test1();
  test2();
  test3();
  test4();
  test5();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
