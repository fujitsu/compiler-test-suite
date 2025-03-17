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
}

int i;

#include <stdio.h>
int main(){
  using A::obj4;
  using A::AC;
  using A::B::obj5;
  using A::B::ABC;
  using ::X::obj1;
  using ::X::XC;
  using ::X::Y::obj2;
  using ::X::Y::XYC;
  i++;
  {
    i=obj1.i+obj2.i+obj4.i+obj5.i;
    i++;
  }
  i++;

  puts("ok");
}
