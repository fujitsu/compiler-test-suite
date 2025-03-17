int x;
namespace A {
  using ::x;
  int y;
  class C {int a;};
  enum E {e1,e2};
  typedef int T;
}
namespace B {
  using A::y;
  using A::C;
  using A::E;
  using A::T;
}
using namespace B;
#include <stdio.h>
int main(){
  A::x = 1;
  B::y = 2;
  y++;
  x++;

  puts("ok");
}
