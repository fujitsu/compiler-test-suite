namespace A {
  class CA1 {public: int i;};
  extern CA1 ca1;
  namespace B {
    class CAB1 {public: int i;};
    extern CAB1 cab1;
  }
  namespace {
    class CAU1 {public: long i;} cau1;
  }
  using namespace B;

  class CA2 {public: int i;};
  extern CA2 ca2;
  namespace B {
    class CAB2 {public: int i;};
    extern CAB2 cab2;
  }
  namespace {
    class CAU2 {public: long i;} cau2;
  }
}

namespace X {
  extern int x;
  class CX {public: int i;};
  extern CX cx;
  int lx;
}
using namespace X;
extern int a;
void g(){
  a += A::ca1.i+A::cab1.i+A::cau1.i+A::ca2.i+A::cab2.i+A::cau2.i;
  lx = 10;
  a += x+cx.i+lx;
}
