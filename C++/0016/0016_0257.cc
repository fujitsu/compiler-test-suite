namespace X {
  int x;
  class XC {public: int i;}obj1;
  void xf(){}
  namespace Y {
    int y;
    class XYC {public: int i;}obj2;
    void yf(){}
    namespace Z {
      int z;
      class XYZC {public: int i;}obj3;
      void zf(){}
    }
  }
}

namespace A {
  int a;
  class AC {public: int i;}obj4;
  void af(){}
  namespace B {
    int b;
    class ABC {public: int i;}obj5;
    void bf(){}
    namespace C {
      int c;
      class ABCC {public: int i;}obj6;
      void cf(){}
      namespace D {
        int d;
        class ABCDC {public: int i;}obj7;
	void df(){}
        namespace E {
          int e;
          class ABCDEC {public: int i;}obj8;
	  void ef(){}
        }
      }
    }
  }
}

using namespace A::B;
using namespace X;
#include <stdio.h>
int main(){

  puts("ok");
}
