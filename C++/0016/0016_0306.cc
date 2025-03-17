char			*func(char a1, char *a2){ return (char *)0; }
short			**func(short a3, ...){ return (short **)0; }
int			***func(...){ return (int ***)0; }

struct SG {
  signed long		*func(signed long, ...);
  void			**func(void);
  double		***func(...);
}sgobj;
signed long		*SG::func(signed long a7, ...){ return (signed long *)0; }
void			**SG::func(void){ return (void **)0; }
double			***SG::func(...){ return (double ***)0; }

class CG : public SG {
 public:
  bool			*func(bool, bool*);
  wchar_t		**func(wchar_t*, ...);
  unsigned long		***func(...);
  struct CSG {
    float		*func(float, float*);
    long double		**func(long double, ...);
    unsigned long long	***func(...);
  }csgobj;
}cgobj;
bool			*CG::func(bool a11, bool *a12){ return (bool *)0; }
wchar_t			**CG::func(wchar_t *a13, ...){ return (wchar_t **)0; }
unsigned long		***CG::func(...){ return (unsigned long ***)0; }
float			*CG::CSG::func(float a1, float *a2){ return (float *)0; }
long double		**CG::CSG::func(long double a3, ...){ return (long double **)0; }
unsigned long long	***CG::CSG::func(...){ return (unsigned long long ***)0; }

union UG {
  signed long		*func(signed long);
  signed long long	**func(...);
  double		***func(double, ...);
}ugobj;
signed long		*UG::func(signed long a1){ return (signed long *)0; }
signed long long	**UG::func(...){ return (signed long long **)0; }
double			***UG::func(double a2, ...){ return (double ***)0; }

namespace NG {
  unsigned char		*func(unsigned char a1){ return (unsigned char *)0; }
  unsigned short	**func(...){ return (unsigned short **)0; }
  unsigned int		***func(unsigned int a2, ...){ return (unsigned int ***)0; }
}
using namespace NG;

#include <stdio.h>
int main(){
  puts("ok");
}
