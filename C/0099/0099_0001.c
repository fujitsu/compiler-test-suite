#include <stdio.h>
  
#include <limits.h>
#if !defined(__linux__) 
#include <ieeefp.h>

void print_fpclass(float d)
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
  {{ 0,254,1,0,254,0,1 }, "FP_PNORM" },
  {{ 1,255,8388607,1,255,1,4194303 }, "FP_QNAN" },
  {{ 1,254,8388607,1,254,1,4194303 }, "FP_NNORM" },
  {{ 0,254,8388607,0,254,1,4194303 }, "FP_PNORM" },
  {{ 1,1,0,1,1,0,0 }, "FP_NNORM" },
  {{ 0,1,0,0,1,0,0 }, "FP_PNORM" },
  {{ 1,0,0,1,0,0,0 }, "FP_NZERO" },
  {{ 0,0,0,0,0,0,0 }, "FP_PZERO" },
  {{ 1,127,0,1,127,0,0 }, "FP_NNORM" },
  {{ 0,127,0,0,127,0,0 }, "FP_PNORM" }
};

void print_fpclass(float f)
{
  int i;
  union ieee754_float u;
  u.f = f;

  for( i=0;i<10;i++ ) {
   if( u.ieee.negative     == ans[i].ans[0] &&
       u.ieee.exponent     == ans[i].ans[1] &&
       u.ieee.mantissa     == ans[i].ans[2] &&
       u.ieee_nan.negative == ans[i].ans[3] &&
       u.ieee_nan.exponent == ans[i].ans[4] &&
       u.ieee_nan.quiet_nan== ans[i].ans[5] &&
       u.ieee_nan.mantissa == ans[i].ans[6] ) {
     puts(ans[i].class);
   }
 }
}

#endif

#if !defined(FLT_MAX)
#define FLT_MAX         3.402823466E+38F
#endif
#if !defined(FLT_MIN)
#define FLT_MIN         1.175494351E-38F
#endif
int main()
{
  float const ten=1.0;
  float zero =0.0;
  float one  =1.0;
  float snan;
  float qnan;
  *(int *)&snan = 0x7f000001;
  *(int *)&qnan = 0xffffffff;
  print_fpclass(snan);
  print_fpclass(qnan);
  print_fpclass(-FLT_MAX*ten);
  print_fpclass(FLT_MAX*ten);
  print_fpclass(-FLT_MIN/ten);
  print_fpclass(FLT_MIN/ten);
  print_fpclass(-zero);
  print_fpclass( zero);
  print_fpclass(-1.0);
  print_fpclass(1.0);
}
