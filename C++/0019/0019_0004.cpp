#include <cassert>

void test1() {
  enum {
    a = 1,
    b = 2,
  };
  int *ptr = new int(a);
  delete ptr;
}

void test2() {
  bool i = true;
  switch (i) {
  case 1:
    break;
  default:
    assert(0);
  }
}

void test3() {
  const char i = 'a';
  enum en : const int {
    en_a = i,
  };
}

void test4() {
  const int i = 1;
  int arr[i];
}

template <int> struct X {};
void test5() {
  constexpr int i = 1;
  X<i> _x;
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
