
#include <stdio.h>

#define strength_reduction(a,n) \
  { \
    int i; \
    for (i=0; i<(n/2); ++i) { \
      int k = i * 2; \
      a[k] = k; \
    } \
  }

#define initarray(a,n,value) \
  { \
    int i; \
    for (i=0; i<(n); ++i) { \
      (a)[i] = (value); \
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
  double r[100];
  long long int a[100];
  const double r8ans = 2550.0;
  const long long int i8ans = 2550LL;
  double r8res;
  long long int i8res;
  int mm;
  
  mm = 1;

  
  initarray(r,n,2.0);
  strength_reduction(r,n);
  sum(r,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  initarray(a,n,2LL);
  strength_reduction(a,n);
  sum(a,n,i8res);
  if (i8res != i8ans) {
    mm = 0;
    printf("ng : %lld != %lld\n", i8res, i8ans);
  }

  if (mm != 0) {
    printf("ok\n");
  }
  return 0;
}
