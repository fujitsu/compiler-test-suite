
#include <stdio.h>

class Base1 {
public:
  virtual void Func1() {}
};

class Base2 {
public:
  virtual Base2& Func2() { printf("ng call base\n"); return *this; }
};

class Derived : public Base1, public Base2 {
public:
  virtual Derived& Func2() { printf("call derived\n"); return *this; }
} Obj3;

int main() {
  Base2* dp = &Obj3;
  Base2& bp = dp->Func2();
  printf("ok\n");
  return 0;
}

