struct SG {}sgobj;

class CG : public SG {
 public:
  int		(SG::*i1)[1];
  wchar_t	(SG::*w1)[1][2];
  struct CSG {
    short	(SG::*s1)[1];
    long	(SG::*l1)[1][2];
  }csgobj;
}cgobj;

union UG {
  unsigned long	(SG::*ul2)[1];
  bool		(SG::*b2)[1][2];
}ugobj;

namespace NG {
  unsigned int	(SG::*ui3)[1];
  double	(SG::*d3)[1][2];
}
using namespace NG;

short		(SG::*s4)[1];
char		(SG::*c4)[1][2];
signed int	(CG::*si4)[1];
signed long	(CG::*sl4)[1][2];
unsigned char	(CG::CSG::*uc4)[1];
long double	(CG::CSG::*ld4)[1][2];
wchar_t		(UG::*w4)[1];
int		(UG::*i4)[1][2];

#include <stdio.h>
int main()
{
  struct SL {}slobj;

  class CL : public SL {
   public:
    int			(SL::*i5)[1];
    wchar_t		(SL::*w5)[1][2];
    struct CSL {
      short		(SL::*s5)[1];
      long		(SL::*l5)[1][2];
    }cslobj;
  }clobj;

  union UL {
    unsigned long	(SL::*ul6)[1];
    bool		(SL::*b6)[1][2];
  }ulobj;

  short			(SL::*s7)[1];
  char			(SL::*c7)[1][2];
  signed int		(CL::*si7)[1];
  signed long		(CL::*sl7)[1][2];
  unsigned char		(CL::CSL::*uc7)[1];
  long double		(CL::CSL::*ld7)[1][2];
  wchar_t		(UL::*w7)[1];
  int			(UL::*i7)[1][2];
  int a=0;

  puts("ok");
}
