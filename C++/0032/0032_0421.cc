
#include <stdio.h>

struct ST {
  int m0;
};

ST Obj1 = { 10 };
ST Obj2 = { 20 };

class Base1 {
public:
  virtual void Func1() {}
};

class Base2 {
public:
  virtual ST Func2() { return Obj1; }
};

class Derived : Base1, Base2 {
public:
  virtual ST Func2() { return Obj2; }
} Obj3;

int main() {
  ST Val = Obj3.Func2();
  if (20==Val.m0)
    printf("ok\n");
  else
    printf("ng\n");
  return 0;
}

