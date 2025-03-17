char			(*func(char a1, char &a2))[1]{ return 0; }
short			(*func(short a3, ...))[1][2]{ return 0; }
int			(*func(...))[1][2][3]{ return 0; }

struct SG {
  signed long		(*func(signed long, ...))[1];
  double		(*func(...))[1][2];
}sgobj;
signed long		(*SG::func(signed long a7, ...))[1]{ return 0; }
double			(*SG::func(...))[1][2]{ return 0; }

class CG : public SG {
 public:
  bool			(*func(bool, bool &))[1];
  wchar_t		(*func(wchar_t &, ...))[1][2];
  unsigned long		(*func(...))[1][2][3];
  struct CSG {
    float		(*func(float, float &))[1];
    long double		(*func(long double, ...))[1][2];
    unsigned long long	(*func(...))[1][2][3];
  }csgobj;
}cgobj;
bool			(*CG::func(bool a11, bool &a12))[1]{ return 0; }
wchar_t			(*CG::func(wchar_t &a13,...))[1][2]{ return 0; }
unsigned long		(*CG::func(...))[1][2][3]{ return 0; }
float			(*CG::CSG::func(float a1, float &a2))[1]{ return 0; }
long double		(*CG::CSG::func(long double a3, ...))[1][2]{ return 0; }
unsigned long long	(*CG::CSG::func(...))[1][2][3]{ return 0; }

union UG {
  signed long		(*func(signed long))[1];
  signed long long	(*func(...))[1][2];
  double		(*func(double, ...))[1][2][3];
}udobj;
signed long		(*UG::func(signed long a1))[1]{ return 0; }
signed long long	(*UG::func(...))[1][2]{ return 0; }
double			(*UG::func(double a2, ...))[1][2][3]{ return 0; }

namespace NG {
  unsigned char		(*func(unsigned char a1))[1]{ return 0; }
  unsigned short	(*func(...))[1][2]{ return 0; }
  unsigned int		(*func(unsigned int i1, ...))[1][2][3]{ return 0; }
}
using namespace NG;

#include <stdio.h>
int main(){
  puts("ok");
}

