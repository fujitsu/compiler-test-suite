#include <cassert>
#include <type_traits>

auto fun1() {}
decltype(auto) fun2() {}

void test() {
  assert(true == std::is_void<decltype(fun1())>::value);
  assert(true == std::is_void<decltype(fun2())>::value);
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
