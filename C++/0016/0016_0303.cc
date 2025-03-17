typedef char			c0[1];
typedef signed char		sc0[1][2];
typedef unsigned char		uc0[1][2][3];

c0 c01;
sc0 *sc01;
uc0 uc01[4];

struct SG {
  typedef short			s1[1];
  typedef signed short		ss1[1][2];
  typedef unsigned short	us1[1][2][3];
}sgobj;

SG::s1 s11;
SG::ss1 *ss11;
SG::us1 us11[4];

class CG : public SG {
 public:
  typedef int			i2[1];
  typedef signed int		si2[1][2];
  typedef unsigned int		ui2[1][2][3];
  struct CSG {
    typedef long		l3[1];
    typedef signed long		sl3[1][2];
    typedef unsigned long	ul3[1][2][3];
  }csgobj;
}cgobj;

CG::i2 i21;
CG::si2 *si21;
CG::ui2 ui21[4];
CG::CSG::l3 l31;
CG::CSG::sl3 *sl31;
CG::CSG::ul3 ul31[4];

union UG {
  typedef float			f4[1];
  typedef double		d4[1][2];
  typedef long double		ld4[1][2][3];
}ugobj;

UG::f4 f41;
UG::d4 *d41;
UG::ld4 ld41[4];

namespace NG {
  typedef bool			b5[1];
  typedef wchar_t		w5[1][2];
}
using namespace NG;
NG::b5 b51;
NG::w5 *w51;

#include <stdio.h>
int main()
{
  typedef long long		ll6[1];
  typedef signed long long	sll6[1][2];
  typedef unsigned long long	ull6[1][2][3];

  ll6 ll61;
  sll6 *sll61;
  ull6 ull61[4];

  struct SL {
    typedef char		c7[1];
    typedef signed char		sc7[1][2];
    typedef unsigned char	uc7[1][2][3];
  }slobj;

  SL::c7 c71;
  SL::sc7 *sc71;
  SL::uc7 uc71[4];
    
  class CL : public SL {
   public:
    typedef short		s8[1];
    typedef signed short	ss8[1][2];
    typedef unsigned short	us8[1][2][3];
    struct CSL {
      typedef int		i9[1];
      typedef signed int	si9[1][2];
      typedef unsigned int	ui9[1][2][3];
    }cslobj;
  }clobj;
  
  CL::s8 s81;
  CL::ss8 *ss81;
  CL::us8 us81[4];
  CL::CSL::i9 i91;
  CL::CSL::si9 *si91;
  CL::CSL::ui9 ui91[4];

  union UL {
    typedef long		l10[1];
    typedef signed long		sl10[1][2];
    typedef unsigned long	ul10[1][2][3];
  }ulobj;

  UL::l10 l101;
  UL::sl10 *sl101;
  UL::ul10 ul101[4];
  
  c01[0] = 0;
  sc01 = 0;
  uc01[0][0][0][0] = 0;
  s11[0] = 0;
  ss11 = 0;
  us11[0][0][0][0] = 0;
  i21[0] = 0;
  si21 = 0;
  ui21[0][0][0][0] = 0;
  l31[0] = 0;
  sl31 = 0;
  ul31[0][0][0][0] = 0;
  f41[0] = 0;
  d41 = 0;
  ld41[0][0][0][0] = 0;
  b51[0] = 0;
  w51 = 0;
  ll61[0] = 0;
  sll61 = 0;
  ull61[0][0][0][0] = 0;
  c71[0] = 0;
  sc71 = 0;
  uc71[0][0][0][0] = 0;
  s81[0] = 0;
  ss81 = 0;
  us81[0][0][0][0] = 0;
  i91[0] = 0;
  si91 = 0;
  ui91[0][0][0][0] = 0;
  l101[0] = 0;
  sl101 = 0;
  ul101[0][0][0][0] = 0;
  {
    typedef float		f11[1];
    typedef double		d11[1][2];
    typedef long double		ld11[1][2][3];

    f11 f111;
    d11 *d111;
    ld11 ld111[4];

    f111[0] = 0;
    d111 = 0;
    ld111[0][0][0][0] = 0;
  }

  puts("ok");
}
