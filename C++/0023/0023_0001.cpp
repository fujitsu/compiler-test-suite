#include <cassert>
#include <initializer_list>
#include <string>
#include <typeinfo>

int main() {
  {
    auto x5 = {3, 4};
    assert(x5.size() == 2);
    assert(typeid(x5) == typeid(std::initializer_list<int>));
  }

  {
    auto x5 = {1.0, 2.0, 3.0};
    assert(x5.size() == 3);
    assert(typeid(x5) == typeid(std::initializer_list<double>));
  }

  {
    auto x5 = {(std::string) "123", (std::string) "456"};
    assert(x5.size() == 2);
    assert(typeid(x5) == typeid(std::initializer_list<std::string>));
  }

  {
    auto x5 = {(std::string) "123", (std::string) "456", (std::string) "789"};
    assert(x5.size() == 3);
    assert(typeid(x5) == typeid(std::initializer_list<std::string>));
  }

  {
    class A {
      int mem;
    };
    auto x5 = {A(), A()};
    assert(x5.size() == 2);
    assert(typeid(x5) == typeid(std::initializer_list<A>));
  }

  {
    class A {
      int mem;
    };
    auto x5 = {A(), A(), A()};
    assert(x5.size() == 3);
    assert(typeid(x5) == typeid(std::initializer_list<A>));
  }

  {
    int a = 1;
    int b = 2;
    int *p = &a;
    int *p1 = NULL;
    int *p2 = &b;
    auto x5 = {p, p1, p2};
    assert(typeid(x5) == typeid(std::initializer_list<int *>));
  }

  {
    int a = 1;
    int b = 2;
    int c = 3;
    int &r = a;
    int &r1 = b;
    int &r2 = c;
    auto x5 = {r, r1, r2};
    assert(typeid(x5) == typeid(std::initializer_list<int>));
  }
}
