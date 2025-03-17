#include <cassert>
#include <initializer_list>
#include <string>
#include <typeinfo>

int main() {
  {
    auto x5 = {3};
    assert(typeid(x5) == typeid(std::initializer_list<int>));
    for (auto a : x5) {
      assert(a == 3);
    }
  }

  {
    auto x5 = {3.0};
    assert(typeid(x5) == typeid(std::initializer_list<double>));
    for (auto a : x5) {
      assert(a == 3.0);
    }
  }

  {
    auto x5 = {'a'};
    assert(typeid(x5) == typeid(std::initializer_list<char>));
    for (auto a : x5) {
      assert(a == 'a');
    }
  }

  {
    auto x5 = {true};
    assert(typeid(x5) == typeid(std::initializer_list<bool>));
    for (auto a : x5) {
      assert(a == true);
    }
  }

  {
    class A {
    public:
      int mem;
      A() { mem = 1; }
    };
    auto x5 = {A()};
    assert(typeid(x5) == typeid(std::initializer_list<A>));
    for (auto a : x5) {
      assert(a.mem == 1);
    }
  }

  {

    auto x5 = {(std::string) "123"};
    assert(typeid(x5) == typeid(std::initializer_list<std::string>));
    for (auto a : x5) {
      assert(a == "123");
    }
  }

  {
    int *p = NULL;
    auto x5 = {p};
    assert(typeid(x5) == typeid(std::initializer_list<int *>));
    for (auto a : x5) {
      assert(a == p);
    }
  }

  {
    int a = 1;
    int &r = a;
    auto x5 = {r};
    assert(typeid(x5) == typeid(std::initializer_list<int>));
    for (auto a : x5) {
      assert(a == r);
    }
  }
}
