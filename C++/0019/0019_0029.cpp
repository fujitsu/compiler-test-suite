#include <cassert>
#include <type_traits>

struct A {
  template <typename T> auto fun(T t);

  template <typename T> decltype(auto) fun_d(T t);
};

template <typename T> auto A::fun(T t) { return t; }

template auto A::fun(int t);

template <> auto A::fun<double>(double t) { return ++t; }

template <typename T> decltype(auto) A::fun_d(T t) { return t; }

template decltype(auto) A::fun_d(int);

template <> decltype(auto) A::fun_d<double>(double t) { return t; }

void test() {
  A a;
  assert(11.0 == a.fun(10.0));
  assert(true == (std::is_same<double, decltype(a.fun(11.0))>::value));

  assert(10.0 == a.fun_d(10.0));
  assert(true == (std::is_same<double, decltype(a.fun_d(10.0))>::value));
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
