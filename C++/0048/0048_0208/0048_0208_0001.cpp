#include <cstdio>
#include "000.hpp"

class Base1
{
public:
  virtual void sub(void) = 0;
  ~Base1() {}
};

class Base2
{
public:
  virtual void sub(void) = 0;
  ~Base2() {}
};

class Derived
{
  class Base1_Impl;
  friend class Base1_Impl;

  class Base1_Impl: public Base1
  {
  public:
    Base1_Impl(Derived *p):
      parent_(p) {}

    virtual void sub()
    {
      parent_->base1_sub();
    }

  private:
    Derived *parent_;
  } base1_obj;

  class Base2_Impl;
  friend class Base2_Impl;

  class Base2_Impl: public Base2
  {
  public:
    Base2_Impl(Derived *p):
      parent_(p) {}

    virtual void sub()
    {
      parent_->base2_sub();
    }

  private:
    Derived *parent_;
  } base2_obj;

  void base1_sub()
  {
    std::puts("Derived::base1_sub");
  }

  void base2_sub()
  {
    std::puts("Derived::base2_sub");
  }

public:
  Derived():
    base1_obj(this),
    base2_obj(this) {}

  operator Base1& () { return base1_obj; }
  operator Base2& () { return base2_obj; }
};

static void func1(Base1& b1)
{
  b1.sub();
}

static void func2(Base2& b2)
{
  b2.sub();
}

void sub1()
{
  Derived d;
  func1(d);
  func2(d);
}
