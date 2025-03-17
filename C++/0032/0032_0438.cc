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
  void (*fp)();

  virtual C getX() volatile { C obj; (*fp)(); return obj; }
};

C shared_from_this()
{
  C obj;
  return obj;
}

void out();

class impl: public virtual Y, public X
{
public:

  virtual void f() { }

  virtual C getX() volatile
  {
    C pi = shared_from_this();
    (*fp)();
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
  py->fp = out;
  C px = py->getX();
}

#include <cstdio>

void out()
{
  printf("call\n");
}

int main()
{
  test();
  printf("test pass\n");
  return 0;
}
