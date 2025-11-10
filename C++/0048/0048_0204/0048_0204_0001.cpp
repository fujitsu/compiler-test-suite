#include <cstdio>
#include "000.hpp"

class P11
{
public:
  void sub11() {}
};

class P12
{
public:
  void sub12() {}
};

class B1: public P11, public P12
{
public:
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
  
  b1.sub11();
  b1.sub12();
}

class P21
{
public:
  void sub21()
  {
    std::puts("P21::sub21");
  }
};

class B2: virtual public P21
{
public:
};

void sub2()
{
  B2 b2;
  b2.sub21();
}
