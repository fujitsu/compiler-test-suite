#include <cassert>
#include <type_traits>

auto fun_var() {
  auto var = 1;
  assert(true == (std::is_same<int, decltype(var)>::value));
  return 1;
}

auto fun_ret() {
  assert(true == (std::is_same<int, decltype(fun_var())>::value));
  return;
}

auto fun_ret_noOp() {
  assert(true == (std::is_void<decltype(fun_ret())>::value));
}

auto fun_noret() {
  assert(true == (std::is_void<decltype(fun_ret_noOp())>::value));
}

void test() {
  fun_var();
  fun_ret();
  fun_ret_noOp();
  fun_noret();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
