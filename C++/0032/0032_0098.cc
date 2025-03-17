
#include <stdio.h>
class A {
 public:
static int a;
};
int A::a=0;
class B : public A{
  public :
  int a;
  B(){
    a=10;
  }
};
class C : public A {};
class D : public C {
};
class E : public D, public C, public B {
  public :
  int a;
  E(){
    a=20;
  }
};
int main(){
B bobj;
E eobj;
 if (bobj.a== 10, eobj.a == 20)
   printf("ok\n");
 else
   printf("ng\n");
return 0;
}
