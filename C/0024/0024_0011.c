
#include <math.h>
#include <float.h>
#include <stdio.h>

#define ok_normal(f) \
  if (isnormal(f) != 0) { \
    printf("ok\n"); \
  } else { \
    printf("ng\n"); \
  }

#define ok_abnormal(f) \
  if (isnormal(f) == 0) { \
    printf("ok\n"); \
  } else { \
    printf("ng\n"); \
  }

int main(void)
{
  float  zerof = 0.0f;
  double zerod = 0.0;
  long double zerol = 0.0l;

  
  printf("isnormal for float\n");
  {
    float f = FLT_MIN;
    ok_normal(f);
  }
  {
    float f = -1.0f;
    ok_normal(f);
  }
  {
    float f = -0.0f;
    ok_abnormal(f);
  }
  {
    float f = 0.0f;
    ok_abnormal(f);
  }
  {
    float f = 1.0f;
    ok_normal(f);
  }
  {
    float f = 1.0f/zerof - 1.0f/zerof;
    ok_abnormal(f);
  }
  {
    float f = zerof/zerof - zerof/zerof;
    ok_abnormal(f);
  }
  {
    float f = FLT_EPSILON;
    ok_normal(f);
  }
  {
    float f = FLT_MAX;
    ok_normal(f);
  }
  
  printf("isnormal for double\n");
  {
    double f = DBL_MIN;
    ok_normal(f);
  }
  {
    double f = -1.0;
    ok_normal(f);
  }
  {
    double f = -0.0;
    ok_abnormal(f);
  }
  {
    double f = 0.0;
    ok_abnormal(f);
  }
  {
    double f = 1.0;
    ok_normal(f);
  }
  {
    double f = zerod/zerod - zerod/zerod;
    ok_abnormal(20.0);
  }
  {
    double f = 1.0/zerod - 1.0/zerod;
    ok_abnormal(f);
  }
  {
    double f = DBL_EPSILON;
    ok_normal(f);
  }
  {
    double f = DBL_MAX;
    ok_normal(f);
  }
  
  printf("isnormal for long double\n");
  {
    long double f = LDBL_MIN;
    ok_normal(f);
  }
  {
    long double f = -1.0l;
    ok_normal(f);
  }
  {
    long double f = -0.0l;
    ok_abnormal(f);
  }
  {
    long double f = 0.0l;
    ok_abnormal(f);
  }
  {
    long double f = 1.0l;
    ok_normal(f);
  }
  {
    long double f = 1.0l/zerol - 1.0l/zerol;
    ok_abnormal(f);
  }
  {
    long double f = zerol/zerol - zerol/zerol;
    ok_abnormal(f);
  }
  {
    long double f = LDBL_EPSILON;
    ok_normal(f);
  }
  {
    long double f = LDBL_MAX;
    ok_normal(f);
  }

  return 0;
}
