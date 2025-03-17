#include <cassert>
#include <typeinfo>

enum E { a, b, c };

template <decltype(auto) n> struct B {
  int mem;
  void fun() { assert(typeid(n) == typeid(enum E)); }
};

template <decltype(auto) n> void fun() { assert(typeid(n) == typeid(enum E)); }

int main() {
  B<a> b;
  b.fun();
  fun<a>();
}
