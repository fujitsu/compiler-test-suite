#include <cassert>
#include <typeinfo>

template <auto n> struct B {
  int mem;
  void fun() { assert(typeid(n) == typeid(int)); }
};

template <auto n> void fun() { assert(typeid(n) == typeid(int)); }

int main() {
  B<1> b;
  b.fun();
  fun<1>();
}
