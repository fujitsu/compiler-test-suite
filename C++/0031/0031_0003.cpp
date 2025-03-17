#include <stdio.h>

class ABC {
  int aaa;
  int bbb;

public:
  void func() { puts("func"); }
};

int main() {
  ABC a;

  a.func();
}
