#include <cstdio>
#include "000.hpp"

class B1
{
public:
  B1():
    m_val(0x0000ffff),
    m_bool(true) {}

  int operator ~ (void) const;
  bool operator ! (void) const;

private:
  int m_val;
  bool m_bool;
};

int B1::operator ~ (void) const
{
  return ~m_val;
}

bool B1::operator ! (void) const
{
  return !m_bool;
}

void sub1()
{
  B1 b1;
  int val1 = ~b1;
  if (val1 != 0xffff0000) {
    std::puts("NG 1-1");
    return;
  }

  if (!b1) {
    std::puts("NG 1-2");
    return;
  }
}

class B2
{
public:
  B2():
    m_val(3) {}
  
  int operator + (void);
  int operator - (void);
  
private:
  int m_val;
};

int B2::operator + ()
{
  return m_val;
}

int B2::operator - ()
{
  return -m_val;
}

void sub2()
{
  B2 b2;
  if (+b2 !=  3) {
    std::puts("NG 2-1");
    return;
  }

  if (-b2 != -3) {
    std::puts("NG 2-2");
    return;
  }
}

class B3
{
public:
  B3():
    m_pi(new int)
  {
    *m_pi = 4;
  }
  
  ~B3()
  {
    delete m_pi;
  }
  
  int *operator & (void);
  int operator * (void);
  
private:
  int *m_pi;
};

int *B3::operator & ()
{
  return m_pi;
}

int B3::operator * (void)
{
  return *m_pi;
}

void sub3()
{
  B3 b3;
  int *pval = &b3;
  if (*pval != 4) {
    std::puts("NG 3-1");
    return;
  }

  int val3 = *b3;
  if (val3 != 4) {
    std::puts("NG 3-2");
    return;
  }
}

class B4
{
public:
  int operator ->* (int val);
};

int B4::operator ->* (int val)
{
  return val * 3;
}

void sub4()
{
  B4 b4;
  int val4 = b4->*111;
  if (val4 != 333) {
    std::puts("NG 4");
    return;
  }

  std::puts("OK");
}
