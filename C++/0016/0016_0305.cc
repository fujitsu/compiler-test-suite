char			(*(*func(int, char))(short, long))(void){ return 0; }
short			**func(char, short **(*)()){ return 0; }
int			(*func())(){ return 0; }

struct SG {
  signed long		(*(*func(signed int, signed char))(signed short, signed long))(void);
  double		**func(signed char, signed short **(*)());
  bool			(*func())();
}sgobj;
signed long		(*(*SG::func(signed int, signed char))(signed short, signed long))(void){ return 0; }
double			**SG::func(signed char, signed short **(*)()){ return 0; }
bool			(*SG::func())(){ return 0; }

class CG : public SG {
 public:
  bool			(*(*func(bool, unsigned char))(short, ...))(void);
  wchar_t		**func(short , wchar_t **(*)());
  unsigned long		(*func())();
  struct CSG {
    float		(*(*func(float, double))(int, ...))(void);
    long double		**func(long double , double **(*)());
    unsigned long long	(*func())();
  }csgobj;
}cgobj;
bool			(*(*CG::func(bool, unsigned char))(short, ...))(void){ return 0; }
wchar_t			**CG::func(short , wchar_t **(*)()){ return 0; }
unsigned long		(*CG::func())(){ return 0; }
float			(*(*CG::CSG::func(float, double))(int, ...))(void){ return 0; }
long double		**CG::CSG::func(long double , double **(*)()){ return 0; }
unsigned long long	(*CG::CSG::func())(){ return 0; }

union UG {
  signed long		(*(*func(signed long, signed int))(long, ...))(void);
  signed long long	**func(signed long long, short **(*)());
  double		(*func())();
}ugobj;
signed long		(*(*UG::func(signed long, signed int))(long, ...))(void){ return 0; }
signed long long	**UG::func(signed long long, short **(*)()){ return 0; }
double			(*UG::func())(){ return 0; }

namespace NG {
  unsigned char		(*(*func(unsigned char, unsigned int))(long, ...))(void){ return 0; }
  unsigned short	**func(unsigned short , long long **(*)()){ return 0; }
  unsigned int		(*func())(){ return 0; }
}
using namespace NG;

#include <stdio.h>
int main(){
  puts("ok");
}
