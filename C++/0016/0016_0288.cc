char			(*func01)(char, char *);
short			(**func02)(short,...);
int			(***func03)(...);

struct SG {
  signed long		(*func11)(signed long,...);
  void			(**func12)(void);
  double		(***func13)(...);
}sgobj;

class CG : public SG {
 public:
  bool			(*func21)(bool, bool *);
  wchar_t		(**func22)(wchar_t *,...);
  unsigned long		(***func23)(...);
  struct CSG {
    float		(*func31)(float, float *);
    long double		(**func32)(long double,...);
    unsigned long long	(***func33)(...);
  }csgobj;
}cgobj;

union UG {
  signed long		(*func41)(signed long);
  signed long long	(**func42)(...);
  double		(***func43)(double,...);
}ugobj;

namespace NG {
  unsigned char		(*func51)(unsigned char);
  unsigned short	(**func52)(...);
  unsigned int		(***func53)(unsigned int,...);
}
using namespace NG;

#include <stdio.h>
int main()
{
  struct SL {
    signed long		(*func61)(signed long,...);
    void		(**func62)(void);
    double		(***func63)(...);
  }slobj;

  class CL : public SL {
   public:
    bool		(*func71)(bool, bool *);
    wchar_t		(**func72)(wchar_t *,...);
    unsigned long	(***func73)(...);
    struct CSL {
      float		(*func81)(float, float *);
      long double	(**func82)(long double,...);
      unsigned long long	(***func83)(...);
    }cslobj;
  }clobj;

  union UL {
    signed long		(*func91)(signed long);
    signed long long	(**func92)(...);
    double		(***func93)(double,...);
  }ulobj;
  int a=0;

  puts("ok");
}
