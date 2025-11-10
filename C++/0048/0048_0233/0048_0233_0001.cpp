#include <cstdio>
#include "000.hpp"

#define DEF_CLASS(N, Op)			\
  class B##N					\
  {						\
  public:					\
    B##N():					\
      m_val(1) {}				\
    B##N(int val):				\
      m_val(val) {}				\
    B##N(const B##N& rhs)			\
    {						\
      m_val = rhs.m_val;			\
    }						\
    B##N& operator = (const B##N& rhs)		\
    {						\
      m_val = rhs.m_val;			\
      return *this;				\
    }						\
    int getVal() const				\
    {						\
      return m_val;				\
    }						\
						\
    B##N operator Op (const B##N& rhs)		\
    {						\
      B##N tmp;					\
      tmp.m_val = m_val Op rhs.m_val;		\
      return tmp;				\
    }						\
						\
    B##N& operator Op##= (const B##N& rhs)	\
    {						\
      m_val Op##= rhs.m_val;			\
      return *this;				\
    }						\
						\
  private:					\
    int m_val;					\
  }

DEF_CLASS(1, +);
DEF_CLASS(2, -);
DEF_CLASS(3, *);
DEF_CLASS(4, /);
DEF_CLASS(5, %);
DEF_CLASS(6, &);
DEF_CLASS(7, ^);
DEF_CLASS(8, |);

void sub1()
{
  B1 b11(3), b12;
  B1 b1 = b11 + b12;
  if (b1.getVal() != 4) {
    std::puts("NG 1-1");
    return;
  }
  
  b1 += b11;
  if (b1.getVal() != 7) {
    std::puts("NG 1-2");
    return;
  }
}

void sub2()
{
  B2 b21(3), b22;
  B2 b2 = b21 - b22;
  if (b2.getVal() != 2) {
    std::puts("NG 2-1");
    return;
  }
  
  b2 -= b21;
  if (b2.getVal() != -1) {
    std::puts("NG 2-2");
    return;
  }
}

void sub3()
{
  B3 b31(2), b32(3);
  B3 b3 = b31 * b32;
  if (b3.getVal() != 6) {
    std::puts("NG 3-1");
    return;
  }
  
  b3 *= b31;
  if (b3.getVal() != 12) {
    std::puts("NG 3-2");
    return;
  }
}

void sub4()
{
  B4 b41(10), b42(2);
  B4 b4 = b41 / b42;
  if (b4.getVal() != 5) {
    std::puts("NG 4-1");
    return;
  }

  b4 /= b42;
  if (b4.getVal() != 2) {
    std::puts("NG 4-2");
    return;
  }
}

void sub5()
{
  B5 b51(10), b52(3);
  B5 b5 = b51 % b52;
  if (b5.getVal() != 1) {
    std::puts("NG 5-1");
    return;
  }

  b5 %= b52;
  if (b5.getVal() != 1) {
    std::puts("NG 5-2");
    return;
  }
}

void sub6()
{
  B6 b61(0xff), b62(0x55), b63(0x5);
  B6 b6 = b61 & b62;
  if (b6.getVal() != 0x55) {
    std::puts("NG 6-1");
    return;
  }

  b6 &= b63;
  if (b6.getVal() != 0x5) {
    std::puts("NG 6-2");
    return;
  }
}

void sub7()
{
  B7 b71(0xaa), b72(0x55), b73(0xf0);
  B7 b7 = b71 ^ b72;
  if (b7.getVal() != 0xff) {
    std::puts("NG 7-1");
    return;
  }

  b7 ^= b73;
  if (b7.getVal() != 0xf) {
    std::puts("NG 7-2");
    return;
  }
}

void sub8()
{
  B8 b81(0x5), b82(0xa), b83(0xf0);
  B8 b8 = b81 | b82;
  if (b8.getVal() != 0xf) {
    std::puts("NG 8-1");
    return;
  }

  b8 |= b83;
  if (b8.getVal() != 0xff) {
    std::puts("NG 8-2");
    return;
  }
  
  std::puts("OK");
}
