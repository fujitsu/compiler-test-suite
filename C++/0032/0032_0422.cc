
#include <stdio.h>

class Base1 {
public:
  virtual void Func1() {}
};

class Base2 {
public:
  virtual int Func2() { return 10; }
};

class Derived : Base1, Base2 {
public:
  virtual int Func2() { return 20; }
} Obj3;

int main() {
  int Val = Obj3.Func2();
  if (20==Val)
    printf("ok\n");
  else
    printf("ng\n");
  return 0;
}

