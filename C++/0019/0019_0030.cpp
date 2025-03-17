#include <cassert>
#include <type_traits>

auto func1() { return 1; }
decltype(auto) func_d1() { return true; }
void test1() {
  assert(true == (std::is_same<int, decltype(func1())>::value));
  assert(true == (std::is_same<bool, decltype(func_d1())>::value));
}

struct A {
  operator auto() { return 1; }
};
struct B {
  operator decltype(auto)() { return 1; }
};
void test2() {
  A a;
  assert(1 == a);
  B b;
  assert(1 == b);
}

auto func3() -> auto{ return 2.0; }
auto func_d3() -> decltype(auto) { return false; }
void test3() {
  assert(true == (std::is_same<double, decltype(func3())>::value));
  assert(true == (std::is_same<bool, decltype(func_d3())>::value));
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
