#include <stdio.h>
class A {
 public:
  int func(A*p);
  class B{
   int a;
   public:
    friend int A::func(A*p);
    void ff(){ if ( a ==3 ) printf("ok\n");}
  }xx;
};
int A::func(A*p){p->xx.a =3; return 0;}

int main(){
 A aobj;
  aobj.func(&aobj);
  aobj.xx.ff();
}







