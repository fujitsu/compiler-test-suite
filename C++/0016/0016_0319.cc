template<class T> class TAG {};

template<class T, int i> class TAG1 {};

template<class T> class TAG2 {
 public:
   template <class T2, int i> class TAG21 {
   public:
     template <class T3, int ii> class TAG22{
     };
   };
}; 

struct SG {}sgobj;

class CG : public SG {
 public:
  TAG<int>	SG::*i1;
  TAG<int>	SG::*w1;
  struct CSG {
    TAG<int>	SG::*s1;
    TAG<int>	SG::*l1;
  }csgobj;
}cgobj;

union UG {
  TAG<int>	SG::*ul2;
  TAG<int>	SG::*b2;
}ugobj;

namespace NG {
  TAG<int>	SG::*ui3;
  TAG<int>	SG::*d3;
}
using namespace NG;

TAG1<short,1>	SG::*s4;
TAG1<short,1>	SG::*c4;
TAG2<long>	CG::*si4;
TAG2<long>	CG::*sl4;
TAG2<float>::TAG21<unsigned int,2>	CG::CSG::*uc4;
TAG2<float>::TAG21<unsigned int,2>	CG::CSG::*ld4;
TAG2<bool>::TAG21<long,3>::TAG22<double,3>	UG::*w4;
TAG2<bool>::TAG21<long,3>::TAG22<double,3>	UG::*i4;

#include <stdio.h>
int main()
{
  struct SL {}slobj;

  class CL : public SL {
   public:
    TAG<int>	SL::*i5;
    TAG<int>	SL::*w5;
    struct CSL {
      TAG<int>	SL::*s5;
      TAG<int>	SL::*l5;
    }cslobj;
  }clobj;

  union UL {
    TAG<int>	SL::*ul6;
    TAG<int>	SL::*b6;
  }ulobj;

  TAG1<short,1>	SL::*s7;
  TAG1<short,1>	SL::*c7;
  TAG2<long>	CL::*si7;
  TAG2<long>	CL::*sl7;
  TAG2<float>::TAG21<unsigned int,2>	CL::CSL::*uc7;
  TAG2<float>::TAG21<unsigned int,2>	CL::CSL::*ld7;
  TAG2<bool>::TAG21<long,3>::TAG22<double,3>	UL::*w7;
  TAG2<bool>::TAG21<long,3>::TAG22<double,3>	UL::*i7;
  int a=0;

  puts("ok");
}
