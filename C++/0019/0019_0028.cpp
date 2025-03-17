#include <cassert>
#include <type_traits>

template <typename T> auto fun(T t) { return ++t; };

template <> auto fun<int>(int t) { return t; }

template auto fun(double);

template <typename T> auto fun(T t);

template <typename T> decltype(auto) fun_d(T t) { return ++t; }

template <> decltype(auto) fun_d<double>(double t) { return t; }

template decltype(auto) fun_d(int t);

template <typename T> decltype(auto) fun_d(T t);

void test1() {
  assert(1 == fun(1));
  assert(true == (std::is_same<int, decltype(fun(1))>::value));
}

void test2() {
  assert(1.0 == fun_d(1.0));
  assert(true == (std::is_same<double, decltype(fun_d(1.0))>::value));
}

void test() {
  test1();
  test2();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
