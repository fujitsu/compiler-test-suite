struct SG {}sgobj;

class CG : public SG {
 public:
  int		SG::*(SG::*i1);
  wchar_t	SG::*(SG::*w1[1]);
  struct CSG {
    short	SG::*(SG::*s1[1])[2];
    long	SG::*(SG::*l1)[1];
  }csgobj;
}cgobj;

union UG {
  unsigned long	SG::*(SG::*ul2);
  bool		SG::*(SG::*b2[1]);
}ugobj;

namespace NG {
  unsigned int	SG::*(SG::*ui3[1])[2];
  double	SG::*(SG::*d3)[1];
}
using namespace NG;

short		SG::*(SG::*s4);
char		SG::*(SG::*c4[1]);
signed int	CG::*(CG::*si4[1])[2];
signed long	CG::*(CG::*sl4)[1];
unsigned char	CG::CSG::*(CG::CSG::*uc4);
long double	CG::CSG::*(CG::CSG::*ld4[1]);
wchar_t		UG::*(UG::*w4[1])[2];
int		UG::*(UG::*i4)[1];

#include <stdio.h>
int main()
{
  struct SL {}slobj;

  class CL : public SL {
   public:
    int			SL::*(SL::*i5);
    wchar_t		SL::*(SL::*w5[1]);
    struct CSL {
      short		SL::*(SL::*s5[1])[2];
      long		SL::*(SL::*l5)[1];
    }cslobj;
  }clobj;

  union UL {
    unsigned long	SL::*(SL::*ul6);
    bool		SL::*(SL::*b6[1]);
  }ulobj;

  short			SL::*(SL::*s7);
  char			SL::*(SL::*c7[1]);
  signed int		CL::*(CL::*si7[1])[2];
  signed long		CL::*(CL::*sl7)[1];
  unsigned char		CL::CSL::*(CL::CSL::*uc7);
  long double		CL::CSL::*(CL::CSL::*ld7[1]);
  wchar_t		UL::*(UL::*w7[1])[2];
  int			UL::*(UL::*i7)[1];
  int a=0;

  puts("ok");
}
