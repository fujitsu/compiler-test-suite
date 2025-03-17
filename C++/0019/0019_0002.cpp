#include <cassert>

void test1() {
  const short i = 1;
  int *ptr = new int(i);
  delete ptr;
}

void test2() {
  const char16_t c_16 = 1;
  const char32_t c_32 = 2;
  const wchar_t wc = 3;
  int i = 1;
  while (i) {
    switch (i) {
    case c_16:
      i = 2;
      break;
    case c_32:
      i = 3;
      break;
    case wc:
      i = 0;
      break;
    default:
      assert(0);
    }
  }
}

void test3() {
  enum {
    a,
    b,
  };
  enum en {
    en_a = a,
  };
}

void test4() {
  enum : const int {
    a,
    b,
  };
  int arr[a];
}

template <int> struct X {};
void test5() {
  struct bit_field {
    int i : 2;
  };
  constexpr bit_field a = {1};
  X<a.i> _x;
}

void test6() { X<true> _x; }

void test() {
  test1();
  test2();
  test3();
  test4();
  test5();
  test6();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
