#include <stdio.h>

class ABC {
public:
  int aaa;
  int bbb;

  void func() { puts("func"); }
};

class DEF : public ABC {
public:
};

int main() {
  ABC a1;
  DEF d1;

  a1.func();
  d1.func();
}
