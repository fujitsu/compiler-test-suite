#include <cstdio>
#include "000.hpp"

class B1
{
public:
  B1(int x, int y):
    m_x(x), m_y(y) {}

  bool operator < (const B1& rhs) const;
  bool operator > (const B1& rhs) const;
  bool operator <= (const B1& rhs) const;
  bool operator >= (const B1& rhs) const;
  bool operator == (const B1& rhs) const;
  bool operator != (const B1& rhs) const;

private:
  int m_x, m_y;

  B1();
  B1(const B1&);
};

bool B1::operator < (const B1& rhs) const
{
  return (m_x < rhs.m_x &&
	  m_y < rhs.m_y);
}

bool B1::operator > (const B1& rhs) const
{
  return (rhs < *this);
}

bool B1::operator <= (const B1& rhs) const
{
  return !(*this > rhs);
}

bool B1::operator >= (const B1& rhs) const
{
  return !(*this < rhs);
}

bool B1::operator == (const B1& rhs) const
{
  return !(*this < rhs) && !(*this > rhs);
}

bool B1::operator != (const B1& rhs) const
{
  return !(*this == rhs);
}

void sub1()
{
  B1 b1(1, 1), b2(2, 2);
  if (!(b1 < b2)) { return; }
  if (!(b2 > b1)) { return; }
  
  B1 b3(1, 1);
  if (!(b1 <= b3)) { return; }
  if (!(b1 >= b3)) { return; }
  
  if (!(b1 == b3)) { return; }
  if (!(b1 != b2)) { return; }

  std::puts("OK");
}
