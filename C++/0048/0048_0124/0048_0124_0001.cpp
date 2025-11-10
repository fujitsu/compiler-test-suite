#include <cstdio>
#include "000.hpp"

class B1
{
public:
  B1():
    m_c('0'), m_i(1) {}

  friend void func1(B1& b1)
  {
    std::printf("%c %d\n", b1.m_c, b1.m_i);
    ++b1.m_c, ++b1.m_i;
    std::printf("%c %d\n", b1.m_c, b1.m_i);
  }

private:
  char m_c;
  int m_i;
};

void sub1()
{
  B1 b1;
  func1(b1);
}
