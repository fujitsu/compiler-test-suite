
#include <stdio.h>
struct C {
     int a;
    C(){a=10;}
};
struct B :C{
};
struct A :B{
};
struct D :A {}x;
int f(){
 return x.A::B::C::a;  
}
struct A2 {
  int a;
  A2(){a=20;}
};
struct B2:A2 {}x2;
int f2(){
  return x2.A2::a;
}

int main(){
 if (f()==10 && f2()==20)
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
