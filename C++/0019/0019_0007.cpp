#include <cstddef>

int x = 1;
class A {
public:
  constexpr A(bool b) : m(b ? 42 : x) {}
  constexpr operator std::size_t() const { return 42; }
  constexpr operator double() const { return 2.0; }
  int m;
};

void test1() {
  int tmp = 10;
  const int len = 10;
  int(*ptr)[10] = new int[tmp][len];
  delete[] ptr;
}

void test2() {
  int tmp = 10;
  constexpr int len = 10;
  int(*ptr)[10] = new int[tmp][len];
  delete[] ptr;
}

void test3() {
  int tmp = 10;
  constexpr A len(true);
  int(*ptr)[42] = new int[tmp][len];
  delete[] ptr;
}

void test() {
  test1();
  test2();
  test3();
}
int main(int argc, char *argv[]) {
  test();
  return 0;
}
