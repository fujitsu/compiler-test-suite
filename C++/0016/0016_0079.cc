struct A {
  int a,b,c;
};
typedef struct A T;
T aobj,*ap=&aobj;
#include <stdio.h>
int main(){
  aobj.a=1;
  aobj.b=2;
  aobj.c=3;

  puts("ok");
}
