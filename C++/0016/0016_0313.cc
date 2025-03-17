struct SG {}sgobj;

class CG : public SG {
 public:
  int		(SG::*i1)(signed int, unsigned int);
  wchar_t	(SG::*w1)(...);
  struct CSG {
    short	(SG::*s1)(signed short, unsigned short);
    long	(SG::*l1)(signed long, unsigned long);
  }csgobj;
}cgobj;

union UG {
  unsigned long	(SG::*ul2)(long, signed long);
  bool		(SG::*b2)(...);
}ugobj;

namespace NG {
  unsigned int	(SG::*ui3)(int, signed int);
  double	(SG::*d3)(float, long double);
}
using namespace NG;

short		(SG::*s4)(signed short, unsigned short);
char		(SG::*c4)(signed char, unsigned char);
signed int	(CG::*si4)(int, unsigned int);
signed long	(CG::*sl4)(long, unsigned long);
unsigned char	(CG::CSG::*uc4)(char, signed char);
long double	(CG::CSG::*ld4)(float, double);
wchar_t		(UG::*w4)(...);
int		(UG::*i4)(signed int, unsigned int);

#include <stdio.h>
int main()
{
  struct SL {}slobj;

  class CL : public SL {
   public:
    int			(SL::*i5)(signed int, unsigned int);
    wchar_t		(SL::*w5)(...);
    struct CSL {
      short		(SL::*s5)(signed short, unsigned short);
      long		(SL::*l5)(signed long, unsigned long);
    }cslobj;
  }clobj;

  union UL {
    unsigned long	(SL::*ul6)(long, signed long);
    bool		(SL::*b6)(...);
  }ulobj;

  short			(SL::*s7)(signed short, unsigned short);
  char			(SL::*c7)(signed char, unsigned char);
  signed int		(CL::*si7)(int, unsigned int);
  signed long		(CL::*sl7)(long, unsigned long);
  unsigned char		(CL::CSL::*uc7)(char, signed char);
  long double		(CL::CSL::*ld7)(float, double);
  wchar_t		(UL::*w7)(...);
  int			(UL::*i7)(signed int, unsigned int);
  int a = 0;

  puts("ok");
}
