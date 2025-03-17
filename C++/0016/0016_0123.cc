

namespace A {
  int a;
}
using namespace A;
namespace B {
  int b;
}
namespace C {
  int c;
  using namespace B;
}
using namespace C;
namespace D {}
namespace E {using namespace D;}
namespace F {using namespace E;}
namespace G {using namespace F;}
namespace H {using namespace G;}
namespace I {using namespace H;}
namespace J {using namespace I;}
namespace K {using namespace J;}
namespace L {using namespace K;}
namespace M {using namespace L;}
namespace N {using namespace M;}
namespace O {using namespace N;}
namespace P {using namespace O;}
namespace Q {using namespace P;}
using namespace Q;
#include <stdio.h>
int main(){
  a = 1;
  b = 2;
  c = 3;

  puts("ok");
}
