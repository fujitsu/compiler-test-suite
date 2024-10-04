
#include <stdio.h>

#define array2scalar(a,b,n,k) \
  { \
    int i; \
    for (i=0; i<n-1; ++i) { \
      a[i] = a[n-1] + b[k]; \
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
  const int k=10;
  double r1[100],r2[100];
  long long int a1[100],a2[100];
  const double r8ans = 498;
  const long long int i8ans = 498LL;
  double r8res;
  long long int i8res;
  int mm;

  mm = 1;

  
  initarray(r1,n,3.0);
  initarray(r2,n,2.0);
  array2scalar(r1,r2,n,k);
  sum(r1,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  initarray(a1,n,3LL);
  initarray(a2,n,2LL);
  array2scalar(a1,a2,n,k);
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
