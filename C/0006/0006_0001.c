#include <stdio.h>
#include <stdbool.h>

#define VLEN (8)
#define N (VLEN*17)
double a[N],b[N],c[N],d[N];

void init(void) {
  int i;  
  for(i=0; i<N;++i) {
    a[i] = i;
    if(i%7==0) {
      b[i] = i;
    } else {
      b[i] = 0;
    }
    c[i] = -1;
    d[i] = -1;
  }
}

void normal_get(void) {
  int i;
  bool is_same[8] = {false,false,false,false,false,false,false,false};
  for(i=0;i<N;++i) {
    is_same[i%VLEN] = (a[i]==b[i])^(is_same[i%VLEN]);
  }
  for(i=0;i<N;++i) {
    if(is_same[i%VLEN]) {
      d[i] = a[i];
    }
  }
}

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include "arm_sve.h"

void builtin_swpl(svbool_t p1, svbool_t p2,
                  double *restrict x,
                  double *restrict y) {
  int i;
  svbool_t p0;
  p0 = svptrue_b64();

  for(i=0;i<N;i+=VLEN) {
    svfloat64_t xi = svld1_f64(p0, &(x[i]));
    svfloat64_t yi = svld1_f64(p0, &(y[i]));
    p1 = svcmpeq_f64(p0,xi,yi);
    p2 = sveor_b_z(p0, p1, p2);
  }

  for(i=0;i<N;i+=VLEN) {
    svfloat64_t xi = svld1_f64(p0, &(x[i]));
    svst1_f64(p2, &(c[i]), xi);
  }
}

void builtin_get(void) {
  builtin_swpl(svptrue_b64(),svpfalse_b(), a, b);
}

int main()
{
  int i;
  init();
  builtin_get();

  normal_get();
  for(i=0;i<N;++i) {
    if(c[i]!=d[i]) {
      printf("NG %d %f %f\n",i,c[i],d[i]);
    }
  }
  puts("OK");
  return 0;
}
#else
int main()
{
  init();
  normal_get();
  puts("OK");
  return 0;
}

#endif
