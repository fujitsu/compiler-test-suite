

class A {
 public:
  int aa,ab;
};
struct B {
  int ba,bb;
};
union C {
  int ca,cb;
};
int  i;
int* ip = &i;
int& ir = i;
int A::*mp = &A::aa;
A aobj;
#include <stdio.h>
int main(){
  int i=10;
  ::i = 1;
  aobj.aa = 2;

  puts("ok");
}
