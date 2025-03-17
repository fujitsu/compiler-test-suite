
#include <stdio.h>

class A {
 public:
void f() const;
void ff() volatile;
void fff() const volatile;
 operator int() const ;
};
void A::f() const {}
void A::ff() volatile {}
void A::fff() const volatile {}
A::operator int() const  {return 1;}


int main(){
  printf("ok\n");
}
