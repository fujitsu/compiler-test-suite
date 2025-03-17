struct SG {}sgobj;

class CG : public SG {
 public:
  SG		SG::*i1;
  SG		SG::*w1;
  struct CSG {
    SG		SG::*s1;
    SG		SG::*l1;
  }csgobj;
}cgobj;

union UG {
  SG		SG::*ul2;
  SG		SG::*b2;
}ugobj;

namespace NG {
  SG		SG::*ui3;
  SG		SG::*d3;
}
using namespace NG;

SG		SG::*s4;
SG		SG::*c4;
CG		CG::*si4;
CG		CG::*sl4;
CG::CSG		CG::CSG::*uc4;
CG::CSG		CG::CSG::*ld4;
UG		UG::*w4;
UG		UG::*i4;

#include <stdio.h>
int main()
{
  struct SL {}slobj;

  class CL : public SL {
   public:
    SL		SL::*i5;
    SL		SL::*w5;
    struct CSL {
      SL	SL::*s5;
      SL	SL::*l5;
    }cslobj;
  }clobj;

  union UL {
    SL		SL::*ul6;
    SL		SL::*b6;
  }ulobj;

  SL		SL::*s7;
  SL		SL::*c7;
  CL		CL::*si7;
  CL		CL::*sl7;
  CL::CSL	CL::CSL::*uc7;
  CL::CSL	CL::CSL::*ld7;
  UL		UL::*w7;
  UL		UL::*i7;
  int a=0;

  puts("ok");
}
