


#include <stdio.h>
class A {
public:
  int   a;
  short b;
  char  c;
};
class B {
public:
  int   A::*ma;
  short A::*mb;
  char  A::*mc;
};

int main(){
  A aobj;
  B bobj;
  aobj.a = 1;
  aobj.b = 2;
  aobj.c = 3;
  bobj.ma = &A::a;
  bobj.mb = &A::b;
  bobj.mc = &A::c;
  printf("aobj.a          = %d\n", aobj.a);
  printf("aobj.*(bobj.ma) = %d\n", aobj.*(bobj.ma));
  printf("aobj.b          = %d\n", aobj.b);
  printf("aobj.*(bobj.mb) = %d\n", aobj.*(bobj.mb));
  printf("aobj.c          = %d\n", aobj.c);
  printf("aobj.*(bobj.mc) = %d\n", aobj.*(bobj.mc));
}
