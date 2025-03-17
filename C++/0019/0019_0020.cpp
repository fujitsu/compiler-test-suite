#include <cassert>
#include <type_traits>

auto fun_1() -> int {
  decltype(auto) x = 1;
  assert(true == (std::is_same<int, decltype(x)>::value));
  return 0;
}

auto fun_2() {
  assert(true == (std::is_same<int, decltype(fun_1())>::value));
  return 1;
}

decltype(auto) fun_3() {
  assert(true == (std::is_same<int, decltype(fun_2())>::value));
  return 1.0;
}

void fun_4() {
  auto x = [](auto a) { return a; };
  assert(true == (std::is_same<double, decltype(fun_3())>::value));
}

void test() {
  fun_1();
  fun_2();
  fun_3();
  fun_4();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
