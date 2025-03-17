#include <stdio.h>

class ABC {
  int aaa;
  int bbb;

public:
  ABC() { puts("ctor"); }

  ~ABC() { puts("dtor"); }

  virtual void func() { puts("func"); }
};

class DEF : public ABC {
public:
  DEF() { puts("def ctor"); }

  ~DEF() { puts("def dtor"); }

  void func() { puts("def func"); }
};

int main() {
  DEF d;
  ABC *p1;
  DEF *p2;

  p1 = &d;
  p2 = &d;

  p1->func();
  p2->func();
}
