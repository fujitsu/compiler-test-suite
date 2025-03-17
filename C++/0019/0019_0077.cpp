#include <cassert>
int flag = 0;

template <template <class...> class T, class... Types>
T<Types...> vt = T<Types...>();

struct X {
  template <class T, class... Types> static T dt;

  void foo() const { flag++; }
};

template <class T, class... Types> T X::dt = T();

template <class... Types> struct Y {
  void foo() const { flag++; }
};

void test() {
  vt<Y>.foo();
  assert(flag == 1);
  vt<Y, int>.foo();
  assert(flag == 2);
  vt<Y, Y<>, double>.foo();
  assert(flag == 3);
  vt<Y, char, X, Y<X, int>>.foo();
  assert(flag == 4);

  flag = 0;
  X::dt<X>.foo();
  assert(flag == 1);
  X::dt<X, Y<>>.foo();
  assert(flag == 2);
  X::dt<X, Y<double>, int>.foo();
  assert(flag == 3);
}

int main() { test(); }
