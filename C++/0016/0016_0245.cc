namespace A {
  class CA1 {public: int i;} ca1;
  namespace B {
    class CAB1 {public: int i;} cab1;
  }
  namespace {
    class CAU1 {public: int i;} cau1;
  }
  using namespace B;
}
namespace {
  class CU1 {public: int i;} cu1;
  namespace C {
    class CUC1 {public: int i;} cuc1;
  }
  namespace {
    class CUU1 {public: int i;} cuu1;
  }
  using namespace C;
}
namespace A {
  class CA2 {public: int i;} ca2;
  namespace B {
    class CAB2 {public: int i;} cab2;
  }
  namespace {
    class CAU2 {public: int i;} cau2;
  }
}
namespace {
  class CU2 {public: int i;} cu2;
  namespace C {
    class CUC2 {public: int i;} cuc2;
  }
  namespace {
    class CUU2 {public: int i;} cuu2;
  }
}
using namespace A;
int a;
#include <stdio.h>
int main(){
  a++;
  a += ca1.i+cab1.i+cau1.i+ca2.i+cab2.i+cau2.i+
       cu1.i+cuc1.i+cuu1.i+cu2.i+cuc2.i+cuu2.i;

  puts("ok");
}
