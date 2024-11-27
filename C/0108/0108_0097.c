#include <stdio.h>
#include <math.h>

#if defined(__aarch64__)
int r4isnormal(float __x)
{ return __builtin_isnormal(__x); }

int r8isnormal(double __x)
{ return __builtin_isnormal(__x); }

int r16isnormal(long double __x)
{ return __builtin_isnormal(__x); }

int main() {
  float r4={0.0};
  double r8={0.0};
  long double r16={0.0};
  int resr4,resr8,resr16;

  resr4  = r4isnormal(r4);
  resr8  = r8isnormal(r8);
  resr16 = r16isnormal(r16);
  if (resr4 != 0 || resr8 != 0 || resr16 != 0) {
    printf("NG1: %d %d %d \n",resr4,resr8,resr16);
  }
  r4=1;
  r8=1;
  r16=1;
  resr4  = r4isnormal(r4);
  resr8  = r8isnormal(r8);
  resr16 = r16isnormal(r16);
  if (resr4 != 1 || resr8 != 1 || resr16 != 1) {
    printf("%d %d %d \n",resr4,resr8,resr16);
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
