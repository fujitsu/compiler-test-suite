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
  using namespace B;
  using namespace B;
  using namespace C::D;
  using namespace C::D;
  using namespace A::B::C::D::E;
  using namespace A::B::C::D::E;
  using namespace ::X;
  using namespace ::X;
  using namespace ::X::Y;
  using namespace ::X::Y;
}

int i;

using namespace A;
#include <stdio.h>
int main(){
  i++;
  {
    i=obj1.i+obj2.i+obj4.i+obj5.i+obj7.i+obj8.i;
    i++;
  }
  i++;

  puts("ok");
}
