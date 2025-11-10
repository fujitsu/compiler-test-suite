#include <cstdio>



class Foo
{
public:
  Foo(int _val) : m_val(_val) {}

  void print() const
  {
    std::printf("%d", m_val);
  }

private:
  int m_val;
};

void sub1()
{
  Foo f1{2};
  Foo f2 = {3};

  f1.print();
  std::puts(" ");
  f2.print();
  std::puts("");
}
