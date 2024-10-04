
#include <stdio.h>

#define unroll(a,b,n) \
  { \
    int i; \
    for (i=0; i<n; ++i) { \
      a[i] = a[i] + b[i]; \
    } \
  }

#define initarray(a,n,value) \
  { \
    int i; \
    for (i=0; i<n; ++i) { \
      a[i] = value; \
    } \
  }

#define sum(a,n,r) \
  { \
    int i; \
    r = 0; \
    for (i=0; i<n; ++i) { \
      r = r + a[i]; \
    } \
  }

int main(void) 
{
  const int n = 100;
  double r1[100], r2[100];
  long long int a1[100], a2[100];
  const double r8ans = 900.0;
  const long long int i8ans = 900LL;
  double r8res;
  long long int i8res;
  int mm;

  mm = 1;

  
  initarray(r1,n,4.0);
  initarray(r2,n,5.0);
  unroll(r1,r2,n);
  sum(r1,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  initarray(a1,n,4LL);
  initarray(a2,n,5LL);
  unroll(a1,a2,n);
  sum(a1,n,i8res);
  if (i8res != i8ans) {
    mm = 0;
    printf("ng : %lld != %lld\n", i8res, i8ans);
  }

  if (mm != 0) {
    printf("ok\n");
  }
  return 0;
}
