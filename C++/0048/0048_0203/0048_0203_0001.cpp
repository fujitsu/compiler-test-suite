#include <cstdio>
#include "000.hpp"

class P11
{
protected:
  virtual void sub11(void) = 0;
};

class P12
{
protected:
  virtual void sub12(void) = 0;
};

class B1: public P11, public P12
{
public:
  void sub1()
  {
    sub11();
    sub12();
  }

protected:
  void sub11()
  {
    std::puts("B1::sub11");
  }

  void sub12()
  {
    std::puts("B1::sub12");
  }
};

void sub1()
{
  B1 b1;
  b1.sub1();
}

class P21
{
protected:
  virtual void sub21(void) = 0;
};

class B2: virtual public P21
{
public:
  void sub2()
  {
    sub21();
  }

protected:
  virtual void sub21()
  {
    std::puts("B2::sub21");
  }
};

void sub2()
{
  B2 b2;
  b2.sub2();
}
