#include <stdio.h>
class A{public: void f()volatile{} };
void (A::* ap)() volatile = &A::f; 



int main(){
  printf("ok\n");
}
