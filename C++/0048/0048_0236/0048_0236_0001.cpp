#include <cstdio>
#include "000.hpp"

class B1
{
public:
  B1() {}

  B1(int x):
    m_x(x) {}

  B1(const B1& rhs)
  {
    m_x = rhs.m_x;
  }

  B1 operator << (std::size_t n)
  {
    B1 tmp;
    tmp.m_x = m_x << n;
    return tmp;
  }

  B1 operator >> (std::size_t n)
  {
    B1 tmp;
    tmp.m_x = m_x >> n;
    return tmp;
  }

  B1& operator <<= (std::size_t n)
  {  
    m_x <<= n;
    return *this;
  }

  B1& operator >>= (std::size_t n)
  {
    m_x >>= n;
    return *this;
  }

  int getVal() const { return m_x; }

private:
  int m_x;
};

void sub1()
{
  B1 b11(1), b12(16), b3(2), b4(32);

  B1 b1 = b11 << 2;
  B1 b2 = b12 >> 2;

  b3 <<= 2;
  b4 >>= 2;

  if (b1.getVal() != 4) { return; }
  if (b2.getVal() != 4) { return; }
  if (b3.getVal() != 8) { return; }
  if (b4.getVal() != 8) { return; }

  std::puts("OK");
}
