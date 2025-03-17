#include <stdio.h>
class B {};
int main(){
 class C{
  class A {
    A(C&){}
  };
 };
 printf("ok\n");

}


