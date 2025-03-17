#include <cassert>
#include <typeinfo>

template <decltype(auto) n> struct B1 {
  void fun() { assert(typeid(n) == typeid(short)); }
};

template <decltype(auto) n> struct B2 {
  void fun() { assert(typeid(n) == typeid(int)); }
};

template <decltype(auto) n> struct B3 {
  void fun() { assert(typeid(n) == typeid(long)); }
};

template <decltype(auto) n> struct B4 {
  void fun() { assert(typeid(n) == typeid(bool)); }
};

template <decltype(auto) n> struct B5 {
  void fun() { assert(typeid(n) == typeid(char)); }
};

template <decltype(auto) n> void f1() { assert(typeid(n) == typeid(short)); }

template <decltype(auto) n> void f2() { assert(typeid(n) == typeid(int)); }

template <decltype(auto) n> void f3() { assert(typeid(n) == typeid(long)); }

template <decltype(auto) n> void f4() { assert(typeid(n) == typeid(bool)); }

template <decltype(auto) n> void f5() { assert(typeid(n) == typeid(char)); }

int main() {
  B1<(short)1> b1;
  b1.fun();

  B2<(int)1> b2;
  b2.fun();

  B3<(long)1> b3;
  b3.fun();

  B4<true> b4;
  b4.fun();

  B5<'a'> b5;
  b5.fun();

  f1<(short)1>();

  f2<(int)1>();

  f3<(long)1>();

  f4<true>();

  f5<'a'>();
}
