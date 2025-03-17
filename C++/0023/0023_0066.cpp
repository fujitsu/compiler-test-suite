#include <cassert>
#include <typeinfo>

template <auto n> void f() { assert(typeid(n) == typeid(int)); }

template <decltype(auto) n> void f1() {
  assert(typeid(int) == typeid(decltype(n)));
}

int main() {
  f<1>();
  f1<1>();
}
