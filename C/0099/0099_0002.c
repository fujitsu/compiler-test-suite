#include <stdio.h>
#include <math.h>
  
#include <limits.h>
#if !defined(__linux__)
#include <ieeefp.h>

void print_fpclass(double d)
{
  char *s = ( isnan(d) )?"NAN":"not NAN";
  long long ll = *(long long *)&d;
  printf("%8.8x%8.8x\n",(int )(ll>>32),(int )ll);
  switch( fpclass(d) ) {
  case FP_SNAN:      printf("FP_SNAN is %s\n",s);    break;
  case FP_QNAN:      printf("FP_QNAN is %s\n",s);    break;
  case FP_NINF:      printf("FP_NINF is %s\n",s);    break;
  case FP_PINF:      printf("FP_PINF is %s\n",s);    break;
  case FP_NDENORM:   printf("FP_NDENORM is %s\n",s); break;
  case FP_PDENORM:   printf("FP_PDENORM is %s\n",s); break;
  case FP_NZERO:     printf("FP_NZERO is %s\n",s);   break;
  case FP_PZERO:     printf("FP_PZERO is %s\n",s);   break;
  case FP_NNORM:     printf("FP_NNORM is %s\n",s);   break;
  case FP_PNORM:     printf("FP_PNORM is %s\n",s);   break;
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
  {{ 0,2047,1048575,-1,-1, 0,2047,1,524287,-1 }, "FP_QNAN" },
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
  char *s = ( isnan(d) )?"NAN":"not NAN";
  long long ll = *(long long *)&d;
  if( ll == 0xfff8000000000000LL ) ll = 0x7fffffffffffffffLL;
  u.d = d;
  printf("%8.8x%8.8x\n",(int )(ll>>32),(int )ll);

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
     printf("%s is %s\n",ans[i].class,s);
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
  *(long long *)&qnan = 0x7fffffffffffffff;
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
