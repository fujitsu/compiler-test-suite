char			(c[1])[1];
short			(s[1][2])[1][2];
int			(i[1][2][3])[1][2][3];

struct SG {
  signed long		(sl1[1])[1];
  double		(d1[1][2])[1][2];
  bool			(b1[1][2][3])[1][2][3];
}sgobj;

class CG : public SG {
 public:
  signed char		(sc2[1])[1];
  wchar_t		(w2[1][2])[1][2];
  unsigned long long	(ull2[1][2][3])[1][2][3];
  struct CSG {
    signed short	(ss2[1])[1];
    signed int		(si2[1][2])[1][2];
    signed long		(sl2[1][2][3])[1][2][3];
  }csgobj;
}cgobj;

union UG {
  unsigned int		(ui3[1])[1];
  unsigned long		(ul3[1][2])[1][2];
  bool			(b3[1][2][3])[1][2][3];
}ugobj;

namespace NG {
  signed long		(sl4[1])[1];
  double		(d4[1][2])[1][2];
  wchar_t		(w4[1][2][3])[1][2][3];
}
using namespace NG;

#include <stdio.h>
int main()
{
  char			(c5[1])[1];
  short			(s5[1][2])[1][2];
  int			(i5[1][2][3])[1][2][3];

  struct SL {
    signed long		(sl6[1])[1];
    double		(d6[1][2])[1][2];
    bool		(b6[1][2][3])[1][2][3];
  }slobj;

  class CL : public SL {
   public:
    signed char		(sc7[1])[1];
    wchar_t		(w7[1][2])[1][2];
    unsigned long long	(ull7[1][2][3])[1][2][3];
    struct CSL {
      signed short	(ss7[1])[1];
      signed int	(si7[1][2])[1][2];
      signed long	(sl7[1][2][3])[1][2][3];
    }cslobj;
  }clobj;

  union UL {
    unsigned int	(ui8[1])[1];
    unsigned long	(ul8[1][2])[1][2];
    bool		(b8[1][2][3])[1][2][3];
  }ulobj;

  {
    char		(ca[1])[1];
    short		(sa[1][2])[1][2];
    int			(ia[1][2][3])[1][2][3];
    int a=0;
  }

  puts("ok");
}
