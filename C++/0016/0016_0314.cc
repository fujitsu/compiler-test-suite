struct SG {}sgobj;

class CG : public SG {
 public:
  int		*(SG::*i1);
  wchar_t	*(SG::*w1);
  struct CSG {
    short	*(SG::*s1);
    long	*(SG::*l1);
  }csgobj;
}cgobj;

union UG {
  unsigned long	*(SG::*ul2);
  bool		*(SG::*b2);
}ugobj;

namespace NG {
  unsigned int	*(SG::*ui3);
  double	*(SG::*d3);
}
using namespace NG;

short		*(SG::*s4);
char		*(SG::*c4);
signed int	*(CG::*si4);
signed long	*(CG::*sl4);
unsigned char	*(CG::CSG::*uc4);
long double	*(CG::CSG::*ld4);
wchar_t		*(UG::*w4);
int		*(UG::*i4);

#include <stdio.h>
int main()
{
  struct SL {}slobj;

  class CL : public SL {
   public:
    int			*(SL::*i5);
    wchar_t		*(SL::*w5);
    struct CSL {
      short		*(SL::*s5);
      long		*(SL::*l5);
    }cslobj;
  }clobj;

  union UL {
    unsigned long	*(SL::*ul6);
    bool		*(SL::*b6);
  }ulobj;

  short			*(SL::*s7);
  char			*(SL::*c7);
  signed int		*(CL::*si7);
  signed long		*(CL::*sl7);
  unsigned char		*(CL::CSL::*uc7);
  long double		*(CL::CSL::*ld7);
  wchar_t		*(UL::*w7);
  int			*(UL::*i7);
  int a=0;

  puts("ok");
}
