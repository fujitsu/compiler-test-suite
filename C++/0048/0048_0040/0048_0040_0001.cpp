#include <cstdio>

class Base
{
public:
  virtual void print()
  {
    std::puts("class Base");
  }
};

class Derived final : public Base
{
public:
  void print()
  {
    std::puts("class Derived final");
  }
};

void sub1()
{
  Derived d;
  d.print();
}
