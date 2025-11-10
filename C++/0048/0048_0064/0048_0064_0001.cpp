#include <cstdio>
#include "000.hpp"

class M
{
public:
  M():
    m_x(2), m_y(3) {}

  void show()
  {
    std::printf("%d %d\n", m_x, m_y);
  }

private:
  int m_x, m_y;
};

union B
{
  int m1;
  M m2;

  B():
    m1(0) {}
  ~B() {}
};

void sub1()
{
  B b;

  b.m1 = 3;
  std::printf("%d\n", b.m1);

  b.m2 = M();
  b.m2.show();
}
