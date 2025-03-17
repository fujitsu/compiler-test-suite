char			c01, &c0 = c01;
signed long		sl11;
bool 			b21;

struct SG {
 public:
  signed long		 &sl1;
  SG() :sl1(sl11){}
}sgobj;

class CG : public SG {
 public:
  bool			&b2;
  CG() :b2(b21){}
}cgobj;

namespace NG {
  unsigned char		uc31, &uc3 = uc31;
  unsigned short	us31, &us3 = us31;
  unsigned int		ui31, &ui3 = ui31;
}
using namespace NG;

#include <stdio.h>
int main()
{
  char			c41, &c4 = c41;
  short			s41, &s4 = s41;
  int			i41, &i4 = i41;

  static signed long	sl51;
  static bool  		b61;

  struct SL {
   public:
    signed long		 &sl5;
    SL() :sl5(sl51){}
  }slobj;

  class CL : public SL {
   public:
    bool		&b6;
    CL() :b6(b61){}
  }clobj;

  sgobj.sl1 = (signed long)1;
  cgobj.b2 = (bool)1;
  slobj.sl5 = (signed long)1;
  clobj.b6 = (bool)1;
  {
    unsigned long	ul71, &ul7 = ul71;
    long double		ld71, &ld7 = ld71;
    bool		b71, &b7 = b71;
  }

  puts("ok");
}
