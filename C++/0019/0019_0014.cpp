#include <cassert>
#include <type_traits>

auto func_1() {
  auto x = 1;
  decltype(auto) y = 2;
  assert(true == (std::is_same<int, decltype(x)>::value));
  assert(true == (std::is_same<int, decltype(y)>::value));

  const auto *v = &x, u = 6;
  static auto z = 0.0;
  assert(true == (std::is_same<const int *, decltype(v)>::value));
  assert(true == (std::is_same<const int, decltype(u)>::value));
  assert(true == (std::is_same<double, decltype(z)>::value));
}

namespace __NS__ {
auto x = 1;
decltype(auto) y = 2;
void func_2() {
  assert(true == (std::is_same<int, decltype(x)>::value));
  assert(true == (std::is_same<int, decltype(y)>::value));
}
}

auto func_3() {
  for (auto i = 1; i < 2; ++i) {
    assert(true == (std::is_same<int, decltype(i)>::value));
  }
  for (decltype(auto) i = 1; i < 2; ++i) {
    assert(true == (std::is_same<int, decltype(i)>::value));
  }
}

void test() {
  func_1();
  __NS__::func_2();
  func_3();
}

int main() {
  test();
  return 0;
}
