int x;
namespace O {
  int ox;
}
namespace A {
  namespace BB {
    int b;
  }
  namespace B = BB;
  class C {};
  struct S {};
  union U {};
  enum E {ee};
  typedef int T;
  int a;
  void f(){}
  using ::x;
  using namespace O;
}
namespace AA = A;
namespace AA = A;
namespace AA = AA;
namespace Z = AA;
#include <stdio.h>
int main(){
  puts("ok");
}
