#include <stdio.h>

class ABC {
  int aaa;
  int bbb;

public:
  ABC() { puts("ctor"); }

  ~ABC() { puts("dtor"); }

  void func() { puts("func"); }
};

class DEF : public ABC {
public:
  DEF() { puts("def ctor"); }

  ~DEF() { puts("def dtor"); }
};

int main() {
  ABC a;
  DEF d;

  a.func();
  d.func();
}
