#include <cassert>
#include <type_traits>

auto fun(int x) { return x; }

auto fun(int x);

decltype(auto) fun_d(int x) { return x; }

decltype(auto) fun_d(int x);

void test1() {
  assert(1 == fun(1));
  assert(true == (std::is_same<int, decltype(fun(1))>::value));
}

void test2() {
  assert(2 == fun_d(2));
  assert(true == (std::is_same<int, decltype(fun_d(2))>::value));
}

void test() {
  test1();
  test2();
}

int main(int argc, char *argv[]) { test(); }
