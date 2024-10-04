
#include <stdio.h>

#define icm(a,n) \
  { \
    int i; \
    for (i=0; i<n-1; ++i) { \
      a[i] = a[i] + a[n-1]; \
    } \
  }

#define initarray(a,n,value) \
  { \
    int i; \
    for (i=0; i<n; ++i) { \
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
  const int n=100;
  double r1[100];
  long long int a1[100];
  const double r8ans = 398.0;
  const long long int i8ans = 398LL;
  double r8res;
  long long int i8res;
  int mm;

  mm = 1;
  
  
  initarray(r1,n,2.0);
  icm(r1,n);
  sum(r1,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  initarray(a1,n,2LL);
  icm(a1,n);
  sum(a1,n,i8res);
  if (i8res != i8ans) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", i8res, i8ans);
  }

  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
