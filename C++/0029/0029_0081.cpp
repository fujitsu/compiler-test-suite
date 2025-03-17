#include <iostream>

static int count = 0;

class A
{
public:
  A() { ++count; }
  virtual ~A() { --count;}
};

class B : A
{
public:
  B() { ++count; }
  virtual ~B() { --count; }
};

class C : B
{
public:
  C() { ++count; }
  virtual ~C() { --count; }
};

class D : C
{
public:
  D() { ++count; }
  virtual ~D() { --count; }
};

class E : D
{
public:
  E() { ++count; }
  virtual ~E() { --count; }
};

int main()
{
  B *b = new(std::nothrow) B;
  std::cout << count << std::endl;

  C c;
  std::cout << count << std::endl;

  D *d1 = new(std::nothrow) D;
  std::cout << count << std::endl;

  E e;
  std::cout << count << std::endl;
  
  delete b;
  std::cout << count << std::endl;

  delete d1;
  std::cout << count << std::endl;

  D d2;
  std::cout << count << std::endl;

  return 0;
}
