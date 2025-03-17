
class A {
public:
  int a;
};
#include <stdio.h>
int main(){
  A *p = new A[10];

  delete []p;

  puts("ok");
}
