#include <cstdio>
#include "000.hpp"

class B1
{
public:
  B1(int x, int y):
    m_x(x), m_y(y) {}

  bool operator && (const B1& rhs);
  bool operator || (const B1& rhs);

private:
  int m_x, m_y;

  B1();
  B1(const B1&);
};

bool B1::operator && (const B1& rhs)
{
  return ((m_x && rhs.m_x) &&
	  (m_y && rhs.m_y));
}

bool B1::operator || (const B1& rhs)
{
  return ((m_x || rhs.m_x) ||
	  (m_y || rhs.m_y));
}

void sub1()
{
  B1 b1(1, 1), b2(0, 1);
  if (b1 && b2) { return; }
  if (!(b1 || b2)) { return; }
  
  std::puts("OK");
}
