#include <cassert>
#include <type_traits>

struct A {

  auto fun_1() -> int {
    decltype(auto) x = 1;
    assert(true == (std::is_same<int, decltype(x)>::value));
    return 0;
  }

  auto fun_2() {
    assert(true == (std::is_same<int, decltype(fun_1())>::value));
    return 0;
  }

  decltype(auto) fun_3() {
    assert(true == (std::is_same<int, decltype(fun_2())>::value));
    return 1.0;
  }
};

void test() {
  A a;
  a.fun_1();
  a.fun_2();
  assert(true == (std::is_same<double, decltype(a.fun_3())>::value));
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
