#include <stdio.h>

class ABC {
  int aaa;
  int bbb;
public:
  ABC () {
    puts("ctor");
  }

  ~ABC () {
    puts("dtor");
  }

  void func () {
    puts("func");
  }
};

int main() {
  ABC a,b,c,d,e;

  a.func ();
}
