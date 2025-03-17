#include <cassert>
#include <string>
#include <typeinfo>

int main() {
  {
    decltype(auto) x5{3};
    assert(x5 == 3);
    assert(typeid(x5) == typeid(int));
  }

  {
    decltype(auto) x5{3.0};
    assert(x5 == 3.0);
    assert(typeid(x5) == typeid(double));
  }

  {
    decltype(auto) x5{'a'};
    assert(x5 == 'a');
    assert(typeid(x5) == typeid(char));
  }

  {
    decltype(auto) x5{true};
    assert(x5 == true);
    assert(typeid(x5) == typeid(bool));
  }

  {
    class A {
    public:
      int mem;
      A() { mem = 1; }
    };
    decltype(auto) x5{A()};
    assert(x5.mem == 1);
    assert(typeid(x5) == typeid(A));
  }

  {
    decltype(auto) x5{"123"};
    std::string x = "123";
    assert(x5 == "123");
    assert(x5 == x);
  }

  {
    enum A { a, b };
    decltype(auto) x5{a};
    assert(x5 == a);
    assert(typeid(a) == typeid(enum A));
  }

  {
    int *p = NULL;
    decltype(auto) x5{p};
    assert(x5 == p);
    assert(typeid(x5) == typeid(int *));
  }

  {
    int a = 1;
    int &r = a;
    decltype(auto) x5{r};
    assert(x5 == r);
    assert(typeid(x5) == typeid(int &));
  }
}
