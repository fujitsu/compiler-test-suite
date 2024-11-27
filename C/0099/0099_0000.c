#include <stdio.h>
  
#include <limits.h>
#if !defined(__linux__)

#include <ieeefp.h>

void print_fpclass(double d)
{
  switch( fpclass(d) ) {
  case FP_SNAN:      puts("FP_SNAN");    break;
  case FP_QNAN:      puts("FP_QNAN");    break;
  case FP_NINF:      puts("FP_NINF");    break;
  case FP_PINF:      puts("FP_PINF");    break;
  case FP_NDENORM:   puts("FP_NDENORM"); break;
  case FP_PDENORM:   puts("FP_PDENORM"); break;
  case FP_NZERO:     puts("FP_NZERO");   break;
  case FP_PZERO:     puts("FP_PZERO");   break;
  case FP_NNORM:     puts("FP_NNORM");   break;
  case FP_PNORM:     puts("FP_PNORM");   break;
  default:
    printf("%d \n",fpclass(d));
    perror("???");
  }
}
#else
#include <ieee754.h>

struct ANS {
  int ans[10];
  char *class;
} ans [] = {
  {{ 0,2047,0,1,1, 0,2047,0,0,1 }, "FP_SNAN" },
  {{ 0,2047,524288,0,0, 0,2047,1,0,0 }, "FP_QNAN" },
  {{ 1,2047,0,0,0, 1,2047,0,0,0 }, "FP_NINF" },
  {{ 0,2047,0,0,0, 0,2047,0,0,0 }, "FP_PINF" },
  {{ 1,0,104857,-1717986918,-1717986918, 1,0,0,104857,-1717986918 }, "FP_NDENORM" },
  {{ 0,0,104857,-1717986918,-1717986918, 0,0,0,104857,-1717986918 }, "FP_PDENORM" },
  {{ 1,0,0,0,0, 1,0,0,0,0 }, "FP_NZERO" },
  {{ 0,0,0,0,0, 0,0,0,0,0 }, "FP_PZERO" },
  {{ 1,1023,0,0,0, 1,1023,0,0,0 }, "FP_NNORM" },
  {{ 0,1023,0,0,0, 0,1023,0,0,0 }, "FP_PNORM" }
};

void print_fpclass(double d)
{
  int i;
  union ieee754_double u;
  u.d = d;

  for( i=0;i<10;i++ ) {
    if( u.ieee.negative     == ans[i].ans[0] &&
       u.ieee.exponent     == ans[i].ans[1] &&
       u.ieee.mantissa0    == ans[i].ans[2] &&
       u.ieee.mantissa1    == ans[i].ans[3] &&
       u.ieee.mantissa1    == ans[i].ans[4] &&
       u.ieee_nan.negative == ans[i].ans[5] &&
       u.ieee_nan.exponent == ans[i].ans[6] &&
       u.ieee_nan.quiet_nan== ans[i].ans[7] &&
       u.ieee_nan.mantissa0== ans[i].ans[8] &&
       u.ieee_nan.mantissa1== ans[i].ans[9] ) {
      puts(ans[i].class);
    }
  }
}

#endif


#if !defined(DBL_MAX)
#define DBL_MAX         1.7976931348623157E+308
#endif
#if !defined(DBL_MIN)
#define DBL_MIN         2.2250738585072014E-308
#endif
int main()
{
  double zero =0.0;
  double one  =1.0;
  double snan;
  double qnan;
  *(long long *)&snan = 0x7ff0000000000001;
  *(long long *)&qnan = 0x7ff8000000000000;
  print_fpclass(snan);
  print_fpclass(qnan);           
  print_fpclass(-DBL_MAX*10.0);
  print_fpclass(DBL_MAX*10.0);
  print_fpclass(-DBL_MIN/10.0);
  print_fpclass(DBL_MIN/10.0);
  print_fpclass(-zero);
  print_fpclass( zero);
  print_fpclass(-1.0);
  print_fpclass(1.0);
}
