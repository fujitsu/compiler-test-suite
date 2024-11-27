#include <stdio.h>
#include <math.h>

#if defined(__aarch64__)

int r4fpclassify(float __x)
{
  return __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL,FP_SUBNORMAL, FP_ZERO, __x);
}

int r8fpclassify(double __x)
{
  return __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL,FP_SUBNORMAL, FP_ZERO, __x);
}

int r16fpclassify(long double __x)
{
  return __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL, FP_SUBNORMAL, FP_ZERO, __x);
}


int main() {
  float r4={1.234};
  double r8={1.2345678901234};
  long double r16={1.234};
  int resr4,resr8,resr16;

  resr4  = r4fpclassify(r4);
  resr8  = r8fpclassify(r8);
  resr16 = r16fpclassify(r16);
  if (resr4 != 4 || resr8 != 4 || resr16 != 4) {
    printf("NG1: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = -r4;
  r8 = -r8;
  r16 = -r16;
  resr4  = r4fpclassify(r4);
  resr8  = r8fpclassify(r8);
  resr16 = r16fpclassify(r16);
  if (resr4 != 4 || resr8 != 4 || resr16 != 4) {
    printf("NG2: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = 0;
  r8 = 0;
  r16 = 0;
  resr4  = r4fpclassify(r4);
  resr8  = r8fpclassify(r8);
  resr16 = r16fpclassify(r16);
  if (resr4 != 2 || resr8 != 2 || resr16 != 2) {
    printf("NG3: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = __builtin_inff();
  r8 = __builtin_inf();
  r16 = __builtin_infl();
  resr4  = r4fpclassify(r4);
  resr8  = r8fpclassify(r8);
  resr16 = r16fpclassify(r16);
  if (resr4 != 1 || resr8 != 1 || resr16 != 1) {
    printf("NG4: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = -r4;
  r8 = -r8;
  r16 = -r16;
  resr4  = r4fpclassify(r4);
  resr8  = r8fpclassify(r8);
  resr16 = r16fpclassify(r16);
  if (resr4 != 1 || resr8 != 1 || resr16 != 1) {
    printf("NG5: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = __builtin_nanf("");
  r8 = __builtin_nan("");
  r16 = __builtin_nanl("");
  resr4  = r4fpclassify(r4);
  resr8  = r8fpclassify(r8);
  resr16 = r16fpclassify(r16);
  if (resr4 != 0 || resr8 != 0 || resr16 != 0) {
    printf("NG6: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = -r4;
  r8 = -r8;
  r16 = -r16;
  resr4  = r4fpclassify(r4);
  resr8  = r8fpclassify(r8);
  resr16 = r16fpclassify(r16);
  if (resr4 != 0 || resr8 != 0 || resr16 != 0) {
    printf("NG7: %d %d %d \n",resr4,resr8,resr16);
  }
  printf("ok\n");
  return 0;
}
#else
int main() {
  printf("ok\n");
  return 0;
}
#endif
