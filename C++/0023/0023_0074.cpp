#include <cassert>
#include <typeinfo>

template <short n> struct B1 {
  void fun() { assert(typeid(n) == typeid(short)); }
};

template <int n> struct B2 {
  void fun() { assert(typeid(n) == typeid(int)); }
};

template <long n> struct B3 {
  void fun() { assert(typeid(n) == typeid(long)); }
};

template <bool n> struct B4 {
  void fun() { assert(typeid(n) == typeid(bool)); }
};

template <char n> struct B5 {
  void fun() { assert(typeid(n) == typeid(char)); }
};

template <short n> void f1() { assert(typeid(n) == typeid(short)); }

template <int n> void f2() { assert(typeid(n) == typeid(int)); }

template <long n> void f3() { assert(typeid(n) == typeid(long)); }

template <bool n> void f4() { assert(typeid(n) == typeid(bool)); }

template <char n> void f5() { assert(typeid(n) == typeid(char)); }

void fun1(short n) { assert(typeid(n) == typeid(short)); }

void fun2(int n) { assert(typeid(n) == typeid(int)); }

void fun3(long n) { assert(typeid(n) == typeid(long)); }

void fun4(bool n) { assert(typeid(n) == typeid(bool)); }

void fun5(char n) { assert(typeid(n) == typeid(char)); }

int main() {
  B1<1> b1;
  b1.fun();

  B2<1> b2;
  b2.fun();

  B3<1> b3;
  b3.fun();

  B4<true> b4;
  b4.fun();

  B5<'a'> b5;
  b5.fun();

  f1<1>();

  f2<1>();

  f3<1>();

  f4<true>();

  f5<'a'>();

  fun1(1);

  fun2(1);

  fun3(1);

  fun4(true);

  fun5('a');
}
