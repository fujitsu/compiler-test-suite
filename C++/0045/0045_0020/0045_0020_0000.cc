

class A {
public:
  int a;
    void sub2(){}
}aobj;
int a;
extern void sub3();
static void sub2(){
  a++;
}
void sub(){
  sub2();
  sub3();
}
#include <stdio.h>
int main(){
  sub();

  puts("ok");
}
