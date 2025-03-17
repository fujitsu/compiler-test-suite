
#include <stdio.h>
struct A {
  struct B {
    struct C {
     int a;
     C(){a=10;}
    };
  };
};
struct D :A::B::C {};
struct E:D{
  int f(){
   return this->A::B::C::a;
  }
}x;
struct A2 {
  int a;
  A2(){a=20;}
};
struct B2:A2 {};
struct C2 : B2 {
int f2(){
  return this->A2::a;
}
}x2;
int main(){
 if (x.f()==10 && x2.f2()==20)
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
