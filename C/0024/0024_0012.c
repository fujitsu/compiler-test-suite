
#include <math.h>
#include <float.h>
#include <stdio.h>

#define ok_plus(f) \
  if (signbit(f) == 0) { \
    printf("ok\n"); \
  } else { \
    printf("ng\n"); \
  }

#define ok_minus(f) \
  if (signbit(f) != 0) { \
    printf("ok\n"); \
  } else { \
    printf("ng\n"); \
  }

int main(void)
{
  float  zerof = 0.0f;
  double zerod = 0.0;
  long double zerol = 0.0l;

  
  printf("signbit for float\n");
  {
    float f = FLT_MIN;
    ok_plus(f);
  }
  {
    float f = -1.0f;
    ok_minus(f);
  }
  {
    float f = -0.0f;
    ok_minus(f);
  }
  {
    float f = 0.0f;
    ok_plus(f);
  }
  {
    float f = 1.0f;
    ok_plus(f);
  }
  {
    float f = 1.0f/zerof - 1.0f/zerof;
#if defined (__x86_64__)
    ok_minus(f);
#else
    ok_plus(f);
#endif
  }
  {
    float f = FLT_EPSILON;
    ok_plus(f);
  }
  {
    float f = FLT_MAX;
    ok_plus(f);
  }
  
  printf("signbit for double\n");
  {
    double f = DBL_MIN;
    ok_plus(f);
  }
  {
    double f = -1.0;
    ok_minus(f);
  }
  {
    double f = -0.0;
    ok_minus(f);
  }
  {
    double f = 0.0;
    ok_plus(f);
  }
  {
    double f = 1.0;
    ok_plus(f);
  }
  {
    double f = 1.0/zerod - 1.0/zerod;
#if defined (__x86_64__)
    ok_minus(f);
#else
    ok_plus(f);
#endif
  }
  {
    double f = DBL_EPSILON;
    ok_plus(f);
  }
  {
    double f = DBL_MAX;
    ok_plus(f);
  }
  
  printf("signbit for long double\n");
  {
    long double f = LDBL_MIN;
    ok_plus(f);
  }
  {
    long double f = -0.0l;
    ok_minus(f);
  }
  {
    long double f = -0.0l;
    ok_minus(f);
  }
  {
    long double f = 0.0l;
    ok_plus(f);
  }
  {
    long double f = 1.0l;
    ok_plus(f);
  }
  {
    long double f = 1.0l/zerol - 1.0l/zerol;
#if defined (__x86_64__)
    ok_minus(f);
#else
    ok_plus(f);
#endif
  }
  {
    long double f = LDBL_EPSILON;
    ok_plus(f);
  }
  {
    long double f = LDBL_MAX;
    ok_plus(f);
  }

  return 0;
}
