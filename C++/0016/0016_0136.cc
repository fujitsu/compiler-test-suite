namespace A {
  typedef int AT;
}
namespace B {
  int x;
  typedef char BT;
}
namespace C {
  typedef long CT;
  class cc {int ccc;};
}
namespace D {
  typedef short DT;
  class cd {int ddd;};
}
using namespace A;
using B::x;
using B::BT;
#include <stdio.h>
int main(){
  using namespace A;
  using C::cc;
  using C::CT;
  x++;
  {
    using namespace A;
    using D::cd;
    using D::DT;
    x++;
  }
  x++;

  puts("ok");
}
