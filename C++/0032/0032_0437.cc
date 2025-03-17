class C
{
public:
  ~C() {} 
};

class X
{
public:
  virtual void f() { }
};

class Y
{
public:
  virtual C getX() { C obj; return obj; }
};

C shared_from_this()
{
  C obj;
  return obj;
}

class impl: public virtual Y, public X
{
public:

  virtual void f() { }

  virtual C getX()
  {
    C pi = shared_from_this();
    return pi;
  }
};

impl obj;

Y *createY()
{
  return &obj;
}

void test()
{
  Y *py = createY();
  C px = py->getX();
}

#include <cstdio>

int main()
{
  test();
  printf("test pass\n");
  return 0;
}
