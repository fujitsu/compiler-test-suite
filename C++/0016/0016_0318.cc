typedef int TI;
typedef bool TB;

struct SG {}sgobj;
typedef struct SG TS;

class CG : public SG {
 public:
  TI		SG::*i1;
  TI		SG::*w1;
  struct CSG {
    TI		SG::*s1;
    TI		SG::*l1;
  }csgobj;
}cgobj;

union UG {
  TI		SG::*ul2;
  TI		SG::*b2;
}ugobj;

namespace NG {
  TI		SG::*ui3;
  TI		SG::*d3;
}
using namespace NG;

TI		SG::*s4;
TI		SG::*c4;
TB		CG::*si4;
TB		CG::*sl4;
TB		CG::CSG::*uc4;
TB		CG::CSG::*ld4;
TS		UG::*w4;
TS		UG::*i4;

#include <stdio.h>
int main()
{
  struct SL {}slobj;
  typedef struct SL TL;

  class CL : public SL {
   public:
    TI		SL::*i5;
    TI		SL::*w5;
    struct CSL {
      TI	SL::*s5;
      TI	SL::*l5;
    }cslobj;
  }clobj;

  union UL {
    TI		SL::*ul6;
    TI		SL::*b6;
  }ulobj;

  TI		SL::*s7;
  TI		SL::*c7;
  TB		CL::*si7;
  TB		CL::*sl7;
  TB		CL::CSL::*uc7;
  TB		CL::CSL::*ld7;
  TL		UL::*w7;
  TL		UL::*i7;
  int a=0;

  puts("ok");
}
