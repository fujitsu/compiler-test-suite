#include <cstdio>

struct B1
{
  B1():
    m_val(1) {}

  bool check(void) &
  {
    return (m_val == 1);
  }

  bool check(void) &&
  {
    return (m_val == 1);
  }

private:
  int m_val;
};

void sub1()
{
  B1 b1;
  if (!b1.check()) {
    std::puts("NG");
    return;
  }
  
  if (!B1().check()) {
    std::puts("NG");
    return;
  }

  std::puts("OK");
}
