namespace A {
  int a;
  namespace B {
    int b;
    namespace C {
      int c;
      namespace D {
        int d;
        namespace E {
          int e;
        }
      }
    }
  }
}
namespace F {
  int f;
  namespace {
    class FAC {public: int i;}cobj1;
  }
  namespace G1 {
    int g1;
    namespace {
      class FAG1C {public: int i;}cobj2;
      namespace GU1 {
	class FAG1U1C {public: int i;}cobj3;
        namespace {
	  class FAG1U1AC {public: int i;}cobj4;
        }
      }
      using namespace GU1;
    }
    namespace H11 {
      int h11;
      namespace {
	class FGHC {public: int i;}cobj5;
      }
    }
    using namespace H11;
    namespace H12 {
      int h12;
    }
    using namespace H12;
    namespace H13 {
      int h13;
    }
    using namespace H13;
    namespace H14 {
      int h14;
    }
    using namespace H14;
    namespace H15 {
      int h15;
    }
    using namespace H15;
  }
  using namespace G1;
  namespace {
    class FAC2 {public: int i;}cobj6;
  }
  namespace G2 {
    int g2;
    namespace H21 {
      int h21;
    }
    using namespace H21;
    namespace H22 {
      int h22;
    }
    using namespace H22;
    namespace H23 {
      int h23;
    }
    using namespace H23;
    namespace H24 {
      int h24;
    }
    using namespace H24;
    namespace H25 {
      int h25;
    }
    using namespace H25;
  }
  using namespace G2;
  namespace G3 {
    int g3;
    namespace H31 {
      int h31;
    }
    using namespace H31;
    namespace H32 {
      int h32;
    }
    using namespace H32;
    namespace H33 {
      int h33;
    }
    using namespace H33;
    namespace H34 {
      int h34;
    }
    using namespace H34;
    namespace H35 {
      int h35;
    }
    using namespace H35;
  }
  using namespace G3;
}
namespace {
  class AC1 {public: int i;}cobj7;
  namespace I {
    class AIC {public: int i;}cobj8;
  }
  using namespace I;
}
namespace {
  class AC2 {public: int i;}cobj9;
}
int i;
using namespace A;
using namespace A;
using namespace A;
using namespace F;
#include <stdio.h>
int main(){
  using namespace B;
  i++;
  {
    using namespace C;
    int j;
    j=10;
    i=j+cobj1.i+cobj2.i+cobj3.i+cobj4.i+cobj5.i+cobj6.i+cobj7.i+cobj8.i+cobj9.i;
    i++;
  }
  i++;

  puts("ok");
}
