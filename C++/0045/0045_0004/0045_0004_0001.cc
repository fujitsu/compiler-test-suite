namespace A {
  int aa;
}
namespace B {
  int bb2;
  class CB2 { int cbx; }cb2obj;
}
namespace C {
  int cc2;
  class CC2 { int ccx; }cc2obj;
}
using namespace A;
using B::bb2;
using B::CB2;
using C::cc2;
using C::CC2;
void f(int a) {
  aa=a+1;
  bb2=aa+1;
  cc2=bb2+1;
  aa++;
}
