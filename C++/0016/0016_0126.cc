namespace A {
  int a;
  namespace B {
    int b;
    namespace C {
      int c;
    }
  }
}
using namespace A;
#include <stdio.h>
int main(){

  puts("ok");
}
