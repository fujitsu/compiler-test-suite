#include <stdio.h>

class ABC {
  int aaa;
  int bbb;
public:
  ABC() {puts("ctr");}

  ABC(int i) {printf("%d\n",i);}

  void func () {
    puts("func");
  }
};

int main() {
  ABC a,a2(10);

  a.func();
}
