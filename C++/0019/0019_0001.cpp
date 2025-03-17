#include <cstddef>

int x = 1;
class A {
public:
  constexpr A(bool b) : val(b ? 42 : x) {}
  constexpr operator std::size_t() const { return val; }
  constexpr operator double() const { return 42.0; }
  int val;
};

void test1() {
  constexpr int tmp = 10;
  int arr[tmp];
}

void test2() {
  constexpr A a(true);
  int arr[a];
}

void test() {
  test1();
  test2();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
