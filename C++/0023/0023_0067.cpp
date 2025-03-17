#include <cassert>
#include <typeinfo>

template <auto n> struct B {
  int mem;
  void fun() { assert(typeid(n) == typeid(int)); }
};

template <decltype(auto) n> struct B1 {
  int mem;
  void fun() { assert(typeid(n) == typeid(int)); }
};

int main() {
  B<2> b;
  b.fun();

  B1<3> b1;
  b1.fun();
}
