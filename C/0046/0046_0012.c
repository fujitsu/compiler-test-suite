
#include <stdio.h>

#define recurrence(a,n) \
  { \
    int i; \
    for (i=2; i<n; ++i) { \
      a[i] = a[i-1] - a[i-2]; \
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
  double a1[100], r8res;
  long long int a2[100], i8res;
  const double r8ans = 2.0;
  const long long int i8ans = 2LL;
  int mm;
  
  mm = 1;

  
  initarray(a1,n,2.0);
  recurrence(a1,n);
  sum(a1,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  initarray(a2,n,2LL);
  recurrence(a2,n);
  sum(a2,n,i8res);
  if (i8res != i8ans) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", i8res, i8ans);
  }

  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
