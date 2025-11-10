#include <cstdio>
#include "000.hpp"

struct B1
{
  int m_val;

  B1():
    m_val(1) {}

  B1& operator ++ ()
  {
    ++m_val;
    return *this;
  }

  B1& operator -- ()
  {
    --m_val;
    return *this;
  }

  B1 operator ++ (int)
  {
    B1 tmp;
    tmp.m_val = m_val;
    ++m_val;
    return tmp;
  }

  B1 operator -- (int)
  {
    B1 tmp;
    tmp.m_val = m_val;
    --m_val;
    return tmp;
  }

  bool check()
  {
    return (m_val == 1);
  }
};

void sub1()
{
  B1 b1;
  
  ++b1;
  b1++;

  b1--;
  --b1;
  
  if (b1.check()) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}
