#include <cstdio>


class B1
{
public:
  B1():
    B1(1, 2, 3) {}
  B1(const int x):
    B1(x, 2, 3) {}
  B1(const int x, const int y):
    B1(x, y, 3) {}
  B1(const int x, const int y, const int z):
    m_x(x), m_y(y), m_z(z) {}

  bool check()
  {
    return ((m_x + m_y + m_z) == 6);
  }

private:
  int m_x, m_y, m_z;
};

void sub1()
{
  B1 b1, b2(1), b3(1, 2), b4(1, 2, 3);
  if (!b1.check()) {
    std::puts("NG1");
    return;
  }

  if (!b2.check()) {
    std::puts("NG2");
    return;
  }

  if (!b3.check()) {
    std::puts("NG3");
    return;
  }

  if (!b4.check()) {
    std::puts("NG4");
    return;
  }

  std::puts("OK");
}
