#include <cstdio>


struct B1_1
{
  B1_1():
    m_val1(1) {}
  B1_1(int val):
    m_val1(val) {}

  int m_val1;
};

struct B1_2
{
  B1_2():
    m_val2(2) {}
  B1_2(char val):
    m_val2(val) {}

  char m_val2;
};

struct B1: B1_1, B1_2
{
  using B1_1::B1_1;
  using B1_2::B1_2;
};

void sub1()
{
  B1 b1(3);
  if (b1.m_val1 != 3) {
    std::puts("NG1");
    return;
  }
  
  B1 b2;
  if (b2.m_val2 != 2) {
    std::puts("NG2");
    return;
  }
  
  std::puts("OK");
}
