
#include <stdio.h>

#define fusion(a,b,c,n) \
  { \
    int i; \
    for (i=0; i<n; ++i) { \
      a[i] = a[i] + b[i]; \
    } \
    for (i=0; i<n; ++i) { \
      c[i] = c[i] + b[i]; \
    } \
  }

#define initarray(a,n,value) \
  { \
    int i; \
    for (i=0; i<n; ++i) { \
      (a)[i] = (value); \
    } \
  }

#define sum(a,b,n,r) \
  { \
    int i; \
    r = 0; \
    for (i=0; i<n; ++i) { \
      r = r + (a[i] + b[i]); \
    } \
  }

int main(void)
{
  const int n = 100;
  double r1[100],r2[100],r3[100];
  long long int a1[100],a2[100],a3[100];
  const double r8ans=1200.0;
  const long long int i8ans=1200LL;
  double r8res;
  long long int i8res;
  int mm;

  mm = 1;

  
  initarray(r1,n,2.0);
  initarray(r2,n,3.0);
  initarray(r3,n,4.0);
  fusion(r1,r2,r3,n);
  sum(r1,r3,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  initarray(a1,n,2LL);
  initarray(a2,n,3LL);
  initarray(a3,n,4LL);
  fusion(a1,a2,a3,n);
  sum(a1,a3,n,i8res);
  if (i8res != i8ans) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", i8res, i8ans);
  }

  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
