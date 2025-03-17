char			c01, *c0 = &c01;
short			s01, *s02 = &s01, **s0 = &s02;
int			i01, *i02 = &i01, **i03 = &i02, ***i0 = &i03;

struct SG {
  long			*l1;
  void			**v1;
  float			***f1;
}sgobj;

class CG : public SG {
 public:
  bool			*b2;
  wchar_t		**w2;
  unsigned long		***ul2;
  struct CSG {
    float		*f2;
    long double		**ld2;
    unsigned long long	***ull2;
  }csgobj;
}cgobj;

union UG {
  signed long		*sl3;
  signed long long	**sll3;
  double		***d3;
}ugobj;

namespace NG {
  unsigned char		*uc4;
  unsigned short	**us4;
  unsigned int		***ui4;
}
using namespace NG;

#include <stdio.h>
int main()
{
  unsigned long		ul51, *ul5 = &ul51;
  void			*v51, **v5 = &v51;
  long double		ld51, *ld52 = &ld51, **ld53 = &ld52, ***ld5 = &ld53;

  long			l11;
  sgobj.l1 = &l11;
  void			*v11;
  sgobj.v1 = &v11;
  float			f11, *f12 = &f11, **f13 = &f12;
  sgobj.f1 = &f13;

  bool			b21;
  cgobj.b2 = &b21;
  wchar_t		w21, *w22 = &w21;
  cgobj.w2 = &w22;
  unsigned long		ul21, *ul22 = &ul21, **ul23 = &ul22;
  cgobj.ul2 = &ul23;

  float			f21;
  cgobj.csgobj.f2 = &f21;
  long double		ld21, *ld22 = &ld21;
  cgobj.csgobj.ld2 = &ld22;
  unsigned long long	ull21, *ull22 = &ull21, **ull23 = &ull22;
  cgobj.csgobj.ull2 = &ull23;

  signed long		sl31;
  ugobj.sl3 = &sl31;
  signed long long	sll31, *sll32 = &sll31;
  ugobj.sll3 = &sll32;
  double		d31, *d32 = &d31, **d33 = &d32;
  ugobj.d3 = &d33;

  unsigned char		uc41;
  uc4 = &uc41;
  unsigned short	us41, *us42 = &us41;
  us4 = &us42;
  unsigned int		ui41, *ui42 = &ui41, **ui43 = &ui42;
  ui4 = &ui43;
  {
    bool		b61, *b6 = &b61;
    wchar_t		w61, *w62 = &w61, **w6 = &w62;
    unsigned long long	ull61, *ull62 = &ull61, **ull63 = &ull62, ***ull6 = &ull63;
  }

  puts("ok");
}
