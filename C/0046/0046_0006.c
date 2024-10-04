
#include <stdio.h>

#define fma(a,b,c,d,e,n) \
  { \
    int i; \
    a[0] = (a[0] + b[0]*c[0]) - d[0]*e[0]; \
    for (i=1; i<n; ++i) { \
      a[i] = (a[i] + b[i]*c[i]) - d[i]*e[i]; \
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
  const int n = 100;
  float r1[100],r2[100],r3[100],r4[100],r5[100];
  double a1[100],a2[100],a3[100],a4[100],a5[100];
  const float r4ans = 200.0f;
  const double r8ans = 200.0;
  float r4res;
  double r8res;
  int mm;
  
  mm = 1;

  initarray(r1,n,2.0f);
  initarray(r2,n,3.0f);
  initarray(r3,n,4.0f);
  initarray(r4,n,3.0f);
  initarray(r5,n,4.0f);
  fma(r1,r2,r3,r4,r5,n);
  sum(r1,n,r4res);
  if (r4res != r4ans) {
    mm = 0;
    (void)printf("ng : %f != %f\n", r4res, r4ans);
  }

  initarray(a1,n,2.0);
  initarray(a2,n,3.0);
  initarray(a3,n,4.0);
  initarray(a4,n,3.0);
  initarray(a5,n,4.0);
  fma(a1,a2,a3,a4,a5,n);
  sum(a1,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
