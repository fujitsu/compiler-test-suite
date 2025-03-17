#include <cassert>
#include <initializer_list>
#include <string>
#include <typeinfo>

auto funint() { return 1; }

const auto fundouble() { return 2.0; }

auto funchar() { return 'a'; }

volatile auto funbool() { return true; }

class A {
public:
  int mem;
  A() { mem = 1; }
};
auto funcls() { return A(); }

auto funstr() { return (std::string) "123"; }

int *p = NULL;
auto funptr() { return p; }

int a = 2;
auto funref() { return (a); }

int main() {
  assert(typeid(funint()) == typeid(int));
  assert(funint() == 1);

  assert(typeid(fundouble()) == typeid(double));
  assert(fundouble() == 2.0);

  assert(typeid(funchar()) == typeid(char));
  assert(funchar() == 'a');

  assert(typeid(funbool()) == typeid(bool));
  assert(funint() == 1);

  assert(typeid(funcls()) == typeid(A));
  assert(funcls().mem == 1);

  assert(typeid(funstr()) == typeid(std::string));
  assert(funstr() == "123");

  assert(typeid(funptr()) == typeid(int *));
  assert(funptr() == p);

  assert(typeid(funref()) == typeid(int &));
  assert(funref() == a);
}
