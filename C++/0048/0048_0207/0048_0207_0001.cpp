#include <cstdio>
#include "000.hpp"

class P11
{
protected:
  virtual void sub11()
  {
    std::puts("P11::sub11");
  }
};

class P12
{
protected:
  virtual void sub12()
  {
    std::puts("P12::sub12");
  }
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
  b1.sub1();
}

class P21
{
protected:
  virtual void sub21()
  {
    std::puts("P11::sub11");
  }
};

class P22
{
protected:
  virtual void sub22()
  {
    std::puts("P12::sub12");
  }
};

class B2: public P21, public P22
{
public:
  void sub2()
  {
    sub21();
    sub22();
  }
};

void sub2()
{
  B2 b2;
  b2.sub2();
}

class P31
{
protected:
  virtual void sub31() {}
};

class B3: virtual public P31
{
public:
  void sub3()
  {
    sub31();
  }

protected:
  void sub31()
  {
    std::puts("B3::sub31");
  }
};

void sub3()
{
  B3 b3;
  b3.sub3();
}

class P41
{
protected:
  virtual void sub41()
  {
    std::puts("P41::sub41");
  }
};

class B4: virtual public P41
{
public:
  void sub4()
  {
    sub41();
  }
};

void sub4()
{
  B4 b4;
  b4.sub4();
}
