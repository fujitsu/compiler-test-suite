#include <stdio.h>
class A {
  public:
  union {int um;};
  int f();
};

int main(){
  int x;

  A aobj;
  if ( aobj.f() == 5){
    printf("ok\n");

  }else {
    printf("ng\n");
  }

}

int A::f(){ um =5;  return um;}
