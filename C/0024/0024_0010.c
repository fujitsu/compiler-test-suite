
#include <math.h>
#include <float.h>
#include <stdio.h>

#define ok_nan(f) \
  if (isnan(f) != 0) { \
    printf("ok\n"); \
  } else { \
    printf("ng\n"); \
  }

#define ok_not_nan(f) \
  if (isnan(f) == 0) { \
    printf("ok\n"); \
  } else { \
    printf("ng\n"); \
  }

int main(void)
{
  float  zerof = 0.0f;
  double zerod = 0.0;
  long double zerol = 0.0l;

  
  printf("isnan for float\n");
  {
    float f = FLT_MIN;
    ok_not_nan(f);
  }
  {
    float f = -1.0f;
    ok_not_nan(f);
  }
  {
    float f = -0.0f;
    ok_not_nan(f);
  }
  {
    float f = 0.0f;
    ok_not_nan(f);
  }
  {
    float f = 1.0f;
    ok_not_nan(f);
  }
  {

    printf("ok\n"); 
  }
  {

    printf("ok\n"); 
  }
  {
    float f = FLT_EPSILON;
    ok_not_nan(f);
  }
  {
    float f = FLT_MAX;
    ok_not_nan(f);
  }
  
  printf("isnan for double\n");
  {
    double f = DBL_MIN;
    ok_not_nan(f);
  }
  {
    double f = -1.0;
    ok_not_nan(f);
  }
  {
    double f = -0.0;
    ok_not_nan(f);
  }
  {
    double f = 0.0;
    ok_not_nan(f);
  }
  {
    double f = 1.0;
    ok_not_nan(f);
  }
  {

    printf("ok\n"); 
  }
  {

    printf("ok\n"); 
  }
  {
    double f = DBL_EPSILON;
    ok_not_nan(f);
  }
  {
    double f = DBL_MAX;
    ok_not_nan(f);
  }
  
  printf("isnan for long double\n");
  {
    long double f = LDBL_MIN;
    ok_not_nan(f);
  }
  {
    long double f = -1.0l;
    ok_not_nan(f);
  }
  {
    long double f = -0.0l;
    ok_not_nan(f);
  }
  {
    long double f = 0.0l;
    ok_not_nan(f);
  }
  {
    long double f = 1.0l;
    ok_not_nan(f);
  }
  {

    printf("ok\n"); 
  }
  {

    printf("ok\n"); 
  }
  {
    long double f = LDBL_EPSILON;
    ok_not_nan(f);
  }
  {
    long double f = LDBL_MAX;
    ok_not_nan(f);
  }

  return 0;
}
