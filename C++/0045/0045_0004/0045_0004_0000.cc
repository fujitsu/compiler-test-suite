namespace A {
  int a;
  class CA {public: int ca;}caobj;
}
namespace B {
  int b;
}
namespace C {
  int c;
}
namespace D {
  int d;
}
namespace E {
  int e;
}
namespace F {
  int ff;
  class CF {public: int cf;}cfobj;
  typedef char TF;
}
namespace G {
  int gg;
  class CG {public: int cg;}cgobj;
  typedef int TG;
}
using namespace D;
extern void f(int);
using A::a;
using E::e;
using A::CA;
#include <stdio.h>
int main(){
  using namespace B;
  using F::TF;
  using F::CF;
  using F::ff;
  TF tf;
  CF lcf;
  b = 1;
  tf = b+1;
  lcf.cf = tf+1;
  {
    using namespace C;
    using G::TG;
    using G::CG;
    using G::gg;
    TG tg;
    CG lcg;
    a++;
    c=lcf.cf;
    tg=c+1;
    lcg.cg=tg+1;
    gg=lcg.cg+1;
    gg++;
  }
  b=G::gg+1;
  f(b);
  d++;

  puts("ok");
}
