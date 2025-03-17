char			*c01, *(&c0) = c01;
signed long		*sl11;
bool			*b21;

struct SG {
  signed long		*(&sl1);
  SG() : sl1(sl11){}
}sgobj;

class CG : public SG {
 public:
  bool			*(&b2);
  CG() : b2(b21){}
}cgobj;

namespace NG {
  unsigned int		*i31, *(&i3) = i31;
}
using namespace NG;

#include <stdio.h>
int main()
{
  unsigned  char	*c41, *(&c4) = c41;

  static signed long	*sl51;
  static bool		*b61;

  struct SL {
    signed long		*(&sl5);
    SL() : sl5(sl51){}
  }slobj;

  class CL : public SL {
   public:
    bool		*(&b6);
    CL() : b6(b61){}
  }clobj;

  sgobj.sl1 = (signed long *)1;
  cgobj.b2 = (bool *)1;
  slobj.sl5 = (signed long *)1;
  clobj.b6 = (bool *)1;
  {
    long double		*ld71, *(&ld7) = ld71;
    float		*f71, *(&f7) = f71;
  }

  puts("ok");
}
