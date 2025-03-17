namespace X {
  int x;
  class XC {public: int i;}obj1;
  namespace Y {
    int y;
    class XYC {public: int i;}obj2;
    namespace Z {
      int z;
      class XYZC {public: int i;}obj3;
    }
  }
}

namespace A {
  int a;
  class AC {public: int i;}obj4;
  namespace B {
    int b;
    class ABC {public: int i;}obj5;
    namespace C {
      int c;
      class ABCC {public: int i;}obj6;
      namespace D {
        int d;
        class ABCDC {public: int i;}obj7;
        namespace E {
          int e;
          class ABCDEC {public: int i;}obj8;
        }
      }
    }
  }
  using B::obj5;
  using B::obj5;
  using B::ABC;
  using B::ABC;
  using B::C::D::E::obj8;
  using B::C::D::E::obj8;
  using B::C::D::E::ABCDEC;
  using B::C::D::E::ABCDEC;
  using ::X::obj1;
  using ::X::obj1;
  using ::X::XC;
  using ::X::Y::obj2;
  using ::X::Y::obj2;
  using ::X::Y::XYC;
  using ::X::Y::XYC;
}

int i;

using namespace A;
#include <stdio.h>
int main(){
  i++;
  {
    i=obj1.i+obj2.i+obj5.i+obj8.i;
    i++;
  }
  i++;

  puts("ok");
}
