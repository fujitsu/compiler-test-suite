#include <stdio.h>

class ABC {
public:
  int aaa;
  int bbb;

  ABC() {puts("con");}
  ABC(int i) {ABC(); aaa=i;}

  void func () {
    puts("func");
  }
};

class DEF : public ABC
{

};

int main() {
  ABC a;
  a.aaa = 1;
  a.bbb = 2;

  ABC a2(a);
  ABC a3(100);
  a3.bbb = 200;

  printf ("%d %d\n", a2.aaa, a2.bbb);
  printf ("%d %d\n", a3.aaa, a3.bbb);
  a.func();

  DEF d1;
  d1.func();
}
