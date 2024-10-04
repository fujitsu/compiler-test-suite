
#include <stdio.h>

#define reduction(a,n) \
  { \
    int i; \
    for (i=0; i<n-1; ++i) { \
      a[n-1] = a[n-1] + a[i]; \
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
  double r1[100];
  long long int a1[100];
  const double r8ans = 100.0;
  const long long int i8ans = 100LL;
  int mm;
  
  mm = 1;

  
  initarray(r1,n,1.0);
  reduction(r1,n);
  if (r1[n-1] != r8ans) {
    mm = 0;
    printf("ng : %lf != %lf\n", r1[n-1], r8ans);
  }

  
  initarray(a1,n,1LL);
  reduction(a1,n);
  if (a1[n-1] != i8ans) {
    mm = 0;
    printf("ng : %lld != %lld\n", a1[n-1], i8ans);
  }

  if (mm != 0) {
    printf("ok\n");
  }
  return 0;
}
