typedef char			c01;
typedef char			&c02;
typedef signed char		sc01;
typedef signed char		&sc02;
typedef unsigned char		uc01;
typedef unsigned char		&uc02;

c01 c001;
c02 c002 = c001;
sc01 sc001;
sc02 sc002 = sc001;
uc01 uc001;
uc02 uc002 = uc001;

struct SG {
  typedef short			s11;
  typedef short			&s12;
  typedef signed short		ss11;
  typedef signed short		&ss12;
  typedef unsigned short	us11;
  typedef unsigned short	&us12;
}sgobj;

SG::s11 s011;
SG::s12 s012 = s011;
SG::ss11 ss011;
SG::ss12 ss012 = ss011;
SG::us11 us011;
SG::us12 us012 = us011;

class CG : public SG {
 public:
  typedef int			i21;
  typedef int			&i22;
  typedef signed int		si21;
  typedef signed int		&si22;
  typedef unsigned int		ui21;
  typedef unsigned int		&ui22;
  struct CSG {
    typedef long		l31;
    typedef long		&l32;
    typedef signed long		sl31;
    typedef signed long		&sl32;
    typedef unsigned long	ul31;
    typedef unsigned long	&ul32;
  }csgobj;
}cgobj;

CG::i21 i021;
CG::i22 i022 = i021;
CG::si21 si021;
CG::si22 si022 = si021;
CG::ui21 ui021;
CG::ui22 ui022 = ui021;

CG::CSG::l31 l031;
CG::CSG::l32 l032 = l031;
CG::CSG::sl31 sl031;
CG::CSG::sl32 sl032 = sl031;
CG::CSG::ul31 ul031;
CG::CSG::ul32 ul032 = ul031;

union UG {
  typedef float			f41;
  typedef float			&f42;
  typedef double		d41;
  typedef double		&d42;
  typedef long double		ld41;
  typedef long double		&ld42;
}ugobj;

UG::f41 f041;
UG::f42 f042 = f041;
UG::d41 d041;
UG::d42 d042 = d041;
UG::ld41 ld041;
UG::ld42 ld042 = ld041;

namespace NG {
  typedef bool			b51;
  typedef bool			&b52;
  typedef wchar_t		w51;
  typedef wchar_t		&w52;
}
using namespace NG;

NG::b51 b051;
NG::b52 b052 = b051;
NG::w51 w051;
NG::w52 w052 = w051;

#include <stdio.h>
int main()
{
  c002 = 0;
  sc002 = 0;
  uc002 = 0;

  s012 = 0;
  ss012 = 0;
  us012 = 0;

  i022 = 0;
  si022 = 0;
  ui022 = 0;

  l032 = 0;
  sl032 = 0;
  ul032 = 0;

  f042 = 0;
  d042 = 0;
  ld042 = 0;

  b052 = 0;
  w052 = 0;

  puts("ok");
}
