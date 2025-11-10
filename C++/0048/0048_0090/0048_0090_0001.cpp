#include <cstdio>

template <typename T>
struct Base
{
  void foo1()
  {
    std::printf("Base::foo1\n");
  }
};

template <typename T>
struct Derived: public Base<T>
{
  void foo2()
  {
    this->foo1();
  }
};

void sub1()
{
  Derived<int> di;
  di.foo2();
}
