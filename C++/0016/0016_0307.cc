int rc = 0;

char			&func(char a1, char *a2){ return (char &)rc; }
short			&func(short a3, ...){ return (short &)rc; }
int			&func(...){ return (int &)rc; }

struct SG {
  signed long		&func(signed long, ...);
  double		&func(...);
}sgobj;
signed long		&SG::func(signed long a7, ...){ return (signed long &)rc; }
double			&SG::func(...){ return (double &)rc; }

class CG : public SG {
 public:
  bool			&func(bool, bool*);
  wchar_t		&func(wchar_t*, ...);
  unsigned long		&func(...);
  struct CSG {
    float		&func(float, float*);
    long double		&func(long double, ...);
    unsigned long long	&func(...);
  }csgobj;
}cgobj;
bool			&CG::func(bool a11, bool *a12){ return (bool &)rc; }
wchar_t			&CG::func(wchar_t *a13, ...){ return (wchar_t &)rc; }
unsigned long		&CG::func(...){ return (unsigned long &)rc; }
float			&CG::CSG::func(float a1, float *a2){ return (float &)rc; }
long double		&CG::CSG::func(long double a3, ...){ return (long double &)rc; }
unsigned long long	&CG::CSG::func(...){ return (unsigned long long &)rc; }

union UG {
  signed long		&func(signed long);
  signed long long	&func(...);
  double		&func(double, ...);
}ugobj;
signed long		&UG::func(signed long a1){ return (signed long &)rc; }
signed long long	&UG::func(...){ return (signed long long &)rc; }
double			&UG::func(double a2, ...){ return (double &)rc; }

namespace NG {
  unsigned char		&func(unsigned char a1){ return (unsigned char &)rc; }
  unsigned short	&func(...){ return (unsigned short &)rc; }
  unsigned int		&func(unsigned int a2, ...){ return (unsigned int &)rc; }
}
using namespace NG;

#include <stdio.h>
int main(){
  puts("ok");
}
