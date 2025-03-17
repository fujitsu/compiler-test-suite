#include <cassert>
#include <typeinfo>

template <decltype(auto) n> struct B {
  int mem;
  void fun() { assert(typeid(n) == typeid(int)); }
};

template <decltype(auto) n> void fun() { assert(typeid(n) == typeid(int)); }

int main() {
  B<1> b;
  b.fun();
  fun<1>();
}
