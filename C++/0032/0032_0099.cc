
#include <stdio.h>
class A {
 public:
static int a;
};
int A::a=0;
class B : public A{
  public :
  int a;
};
class BB : public B {
 public:
 BB(){
   a =10;
 }
};
class C : public A {};
class D : public C {
};
class E : public D, public C, public B {
  public :
  int a;
};
class EE : public E {
 public:
  EE(){
    a=20;
  }
};
int main(){
BB bobj;
EE eobj;
 if (bobj.a== 10, eobj.a == 20)
   printf("ok\n");
 else
   printf("ng\n");
return 0;
}
