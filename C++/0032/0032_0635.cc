













#include <stdio.h>

struct A {
  virtual void print(){ printf("ng\n"); }
};

struct B : A {
  void print(){ printf("ok\n"); }
};

A a;
B b;
A* ap[2] = { &a, &b };
int main()
{
  ap[1]->print();
}
