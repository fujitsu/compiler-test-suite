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
namespace X {
  int x;
  namespace B {
    int b;
  }
}
using namespace X;
#include <stdio.h>
int main(){

  puts("ok");
}
