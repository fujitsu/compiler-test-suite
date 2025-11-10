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
}
namespace {
  class CU1 {public: long i;} cu1;
  namespace C {
    class CUC1 {public: long i;} cuc1;
  }
  namespace {
    class CUU1 {public: long i;} cuu1;
  }
  using namespace C;
}
namespace A {
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
namespace {
  class CU2 {public: long i;} cu2;
  namespace C {
    class CUC2 {public: long i;} cuc2;
  }
  namespace {
    class CUU2 {public: long i;} cuu2;
  }
}
using namespace A;
extern int a;
void f(){
  a += ca1.i+cab1.i+cau1.i+ca2.i+cab2.i+cau2.i+
       cu1.i+cuc1.i+cuu1.i+cu2.i+cuc2.i+cuu2.i;
}
