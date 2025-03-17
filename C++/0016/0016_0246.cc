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
  namespace ZZ=Y::Z;
  namespace ZZ=Y::Z;
}

namespace XXX = ::X;
namespace XXX = ::X;
namespace YYY = ::X::Y;
namespace YYY = ::X::Y;
namespace XXX2= ::XXX;
namespace XXX2= ::XXX;
namespace ZZZ2= ::XXX::ZZ;
namespace ZZZ2= ::XXX::ZZ;

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
      namespace ED=D;
      namespace ED=D;
      namespace EC=D::E;
      namespace EC=D::E;
    }
  }
  using namespace B;
  namespace BB=B;
  namespace BB=B;
  namespace EE=C::D::E;
  namespace EE=C::D::E;
  namespace XX=::X;
  namespace XX=::X;
  namespace YY=::X::Y;
  namespace YY=::X::Y;
  namespace BB2=BB;
  namespace BB2=BB;
  namespace EE2=EE;
  namespace EE2=EE;
  namespace XX2=XX;
  namespace XX2=XX;
  namespace YY2=YY;
  namespace YY2=YY;
  namespace EEC=B::C::EC;
  namespace EEC=B::C::EC;
  namespace XXXX=::XXX;
  namespace XXXX=::XXX;
  namespace ZZZZ=::XXX::ZZ;
  namespace ZZZZ=::XXX::ZZ;
}

namespace AAA = A;
namespace AAA = A;
namespace EEE = A::B::C::D::E;
namespace EEE = A::B::C::D::E;
namespace AAA2 = AAA;
namespace AAA2 = AAA;
namespace EEE2 = EEE;
namespace EEE2 = EEE;
namespace XXX2 = XXX;
namespace XXX2 = XXX;
namespace YYY2 = YYY;
namespace YYY2 = YYY;
using namespace AAA;
namespace EEC2=B::C::EC;
namespace EEC2=B::C::EC;

int i;
#include <stdio.h>
int main(){
  namespace LXXX = ::X;
  namespace LXXX = ::X;
  namespace LYYY = ::X::Y;
  namespace LYYY = ::X::Y;
  namespace LXXX2= ::XXX;
  namespace LXXX2= ::XXX;
  namespace LZZZ2= ::XXX::ZZ;
  namespace LZZZ2= ::XXX::ZZ;
  namespace LAAA = A;
  namespace LAAA = A;
  namespace LEEE = A::B::C::D::E;
  namespace LEEE = A::B::C::D::E;
  namespace LAAA2 = AAA;
  namespace LAAA2 = AAA;
  namespace LEEE2 = EEE;
  namespace LEEE2 = EEE;
  namespace LXXX2 = XXX;
  namespace LXXX2 = XXX;
  namespace LYYY2 = YYY;
  namespace LYYY2 = YYY;
  namespace LEEC=B::C::EC;
  namespace LEEC=B::C::EC;
  i++;
  {
    namespace LLXXX = ::X;
    namespace LLXXX = ::X;
    namespace LLYYY = ::X::Y;
    namespace LLYYY = ::X::Y;
    namespace LLXXX2= ::XXX;
    namespace LLXXX2= ::XXX;
    namespace LLZZZ2= ::XXX::ZZ;
    namespace LLZZZ2= ::XXX::ZZ;
    namespace LLAAA = A;
    namespace LLAAA = A;
    namespace LLEEE = A::B::C::D::E;
    namespace LLEEE = A::B::C::D::E;
    namespace LLAAA2 = AAA;
    namespace LLAAA2 = AAA;
    namespace LLEEE2 = EEE;
    namespace LLEEE2 = EEE;
    namespace LLXXX2 = XXX;
    namespace LLXXX2 = XXX;
    namespace LLYYY2 = YYY;
    namespace LLYYY2 = YYY;
    namespace LLEEC=B::C::EC;
    namespace LLEEC=B::C::EC;
    using namespace LLXXX2;
    using namespace LLYYY2;
    using namespace LLZZZ2;
    using namespace LLEEC;
    using namespace LAAA2::BB::C;
    using namespace C::ED;
    i=obj1.i+obj2.i+obj3.i+obj4.i+obj5.i+obj6.i+obj7.i+obj8.i;
    i++;
  }
  i++;

  puts("ok");
}

