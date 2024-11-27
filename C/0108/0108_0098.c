#include <stdio.h>
#include <math.h>

#if defined(__aarch64__)

int r4signbit(float __x)
{ return __builtin_signbit(__x); }

int r8signbit(double __x)
{ return __builtin_signbit(__x); }

int r16signbit(long double __x)
{ return __builtin_signbit(__x); }

int main() {
  float r4={1.0};
  double r8={1.0};
  long double r16={1.0};
  int resr4,resr8,resr16;

  resr4  = r4signbit(r4);
  resr8  = r8signbit(r8);
  resr16 = r16signbit(r16);
  if (resr4 != 0 || resr8 != 0 || resr16 != 0) {
    printf("NG1: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = -123.45;
  r8 = -123.45;
  r16 = -123.45;
  resr4  = r4signbit(r4);
  resr8  = r8signbit(r8);
  resr16 = r16signbit(r16);
  if (resr4 == 0 || resr8 == 0 || resr16 == 0) {
    printf("NG2: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = __builtin_inf();
  r8 = __builtin_inf();
  r16 = __builtin_inf();
  resr4  = r4signbit(r4);
  resr8  = r8signbit(r8);
  resr16 = r16signbit(r16);
  if (resr4 != 0 || resr8 != 0 || resr16 != 0) {
    printf("NG3: %d %d %d \n",resr4,resr8,resr16);
  }

  r4 = -r4;
  r8 = -r8;
  r16 = -r16;
  resr4  = r4signbit(r4);
  resr8  = r8signbit(r8);
  resr16 = r16signbit(r16);
  if (resr4 == 0 || resr8 == 0 || resr16 == 0) {
    printf("NG4: %d %d %d \n",resr4,resr8,resr16);
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
