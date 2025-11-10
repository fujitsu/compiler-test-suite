#include <cstdio>
#include "000.hpp"

class P11
{
public:
  virtual void sub11(void) = 0;
};

class P12
{
public:
  virtual void sub12(void) = 0;
};

class B1: public P11, public P12
{
public:
  virtual void sub11()
  {
    std::puts("B1::sub11");
  }

  virtual void sub12()
  {
    std::puts("B1::sub12");
  }
};

void sub1()
{
  B1 b1;
  
  b1.sub11();
  b1.sub12();
}

class P21
{
public:
  virtual void sub21(void) = 0;
};

class B2: virtual public P21
{
public:
  virtual void sub21()
  {
    std::puts("B2::sub21");
  }
};

void sub2()
{
  B2 b2;
  
  b2.sub21();
}
