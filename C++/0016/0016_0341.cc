


#include <stdio.h>
class A {
public:
  int a;
  int         f2(){printf("a::f2\n"); return 1;}  int         f3(int a){printf("a::f3\n"); return a;}  virtual int f4(){printf("a::f2\n"); return 1;}
};
class B {
public:
  int b;
  inline int         f2();
  inline int         f3(int a);
  inline virtual int f4();
};
inline int B::f2(){ printf("B::f2\n"); return 1;}
inline int B::f3(int a){ printf("B::f3\n"); return a;}
inline int B::f4(){ printf("B::f4\n"); return 1;}
int main(){
  A aobj_l;
  B bobj_l;
  aobj_l.f2();
  aobj_l.f3(1);
  aobj_l.f4();
  bobj_l.f2();
  bobj_l.f3(1);
  bobj_l.f4();
  return 0;
}
