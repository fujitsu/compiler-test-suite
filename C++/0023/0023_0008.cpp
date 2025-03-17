#include <cassert>
#include <string>
#include <typeinfo>

int main() {
  {
    auto x5{3};
    assert(x5 == 3);
    assert(typeid(x5) == typeid(int));
  }

  {
    const auto x5{3.0};
    assert(x5 == 3.0);
    assert(typeid(x5) == typeid(double));
  }

  {
    volatile auto x5{'a'};
    assert(x5 == 'a');
    assert(typeid(x5) == typeid(char));
  }

  {
    volatile auto x5{true};
    assert(x5 == true);
    assert(typeid(x5) == typeid(bool));
  }

  {
    class A {
    public:
      int mem;
      A() { mem = 1; }
    };
    auto x5{A()};
    assert(x5.mem == 1);
    assert(typeid(x5) == typeid(A));
  }

  {
    const auto x5{"123"};
    std::string x = "123";
    assert(x5 == "123");
    assert(x5 == x);
  }

  {
    enum A { a, b };
    auto x5{a};
    assert(x5 == a);
    assert(typeid(a) == typeid(enum A));
  }

  {
    int *p = NULL;
    auto x5{p};
    assert(x5 == p);
    assert(typeid(x5) == typeid(int *));
  }

  {
    int a = 1;
    int &r = a;
    auto x5{r};
    assert(x5 == r);
    assert(typeid(x5) == typeid(int &));
  }
}
