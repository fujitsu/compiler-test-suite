#include <cassert>
#include <initializer_list>
#include <string>
#include <typeinfo>

int main() {
  {
    const auto x5 = {3};
    assert(typeid(x5) == typeid(const std::initializer_list<int>) ||
           typeid(x5) == typeid(const std::initializer_list<const int>));
  }

  {
    volatile auto x5 = {3.0};
    assert(typeid(x5) == typeid(volatile std::initializer_list<double>) ||
           typeid(x5) ==
               typeid(volatile std::initializer_list<volatile double>));
  }

  {
    const auto x5 = {true};
    assert(typeid(x5) == typeid(const std::initializer_list<bool>) ||
           typeid(x5) == typeid(const std::initializer_list<const bool>));
  }

  {

    class A {
    public:
      int mem;
      A() { mem = 1; }
    };
    const auto x5 = {A()};
    assert(typeid(x5) == typeid(const std::initializer_list<A>) ||
           typeid(x5) == typeid(const std::initializer_list<const A>));
  }

  {

    const auto x5 = {(std::string) "123"};
    assert(typeid(x5) == typeid(const std::initializer_list<std::string>) ||
           typeid(x5) ==
               typeid(const std::initializer_list<const std::string>));
  }

  {
    volatile int *p = NULL;
    auto x5 = {p};
    assert(typeid(x5) == typeid(volatile std::initializer_list<int *>) ||
           typeid(x5) ==
               typeid(volatile std::initializer_list<volatile int *>));
  }

  {
    const int a = 1;
    const int &r = a;
    const auto x5 = {r};
    assert(typeid(x5) == typeid(const std::initializer_list<int>) ||
           typeid(x5) == typeid(const std::initializer_list<const int>));
  }
}
