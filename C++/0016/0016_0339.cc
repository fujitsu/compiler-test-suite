

#include <stdio.h>
class A {
public:
  int a;
  char b;
  static int st_a;
  void        f(int A::*);
};
class B: public A {
public:
  void f(int b[][2]);
  int a;
};
void A::f(int A::* mp){
  A aobj;
  aobj.*mp=2;
  printf("A::f\n");
}
void B::f(int b[10][2]){ printf("B::f\n"); }
int main(){
  A aobj_l;
  B bobj_l;
  int a[10][2] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19};
  a[1][1]=10;
  a[5][0]=20;
  aobj_l.f(&A::a);
  bobj_l.f(a);
  return 0;
}
