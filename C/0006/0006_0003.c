#include <stdio.h>
#include <stdbool.h>

#define VLEN (16)
#define N (VLEN*33)
float a[N],b[N],c[N],d[N];

void init(void) {
  int i;  
  for(i=0; i<N;++i) {
    a[i] = i;
    if(i%7==0) {
      b[i] = i+1;
    } else {
      b[i] = i-1;
    }
    c[i] = -1;
    d[i] = -1;
  }
}

void normal_get(void) {
  int i;
  bool is_same[16] = {false,false,false,false,false,false,false,false,
                      false,false,false,false,false,false,false,false};
  for(i=0;i<N;++i) {
    is_same[i%VLEN] = (a[i]>b[i])^(is_same[i%VLEN]);
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
                  float *restrict x,
                  float *restrict y) {
  int i;
  svbool_t p0;
  p0 = svptrue_b32();

  for(i=0;i<N;i+=VLEN) {
    svfloat32_t xi = svld1_f32(p0, &(x[i]));
    svfloat32_t yi = svld1_f32(p0, &(y[i]));
    p1 = svcmpgt_f32(p0,xi,yi);
    p2 = sveor_b_z(p0, p1, p2);
  }

  for(i=0;i<N;i+=VLEN) {
    svfloat32_t xi = svld1_f32(p0, &(x[i]));
    svst1_f32(p2, &(c[i]), xi);
  }
}

void builtin_get(void) {
  builtin_swpl(svptrue_b32(),svpfalse_b(), a, b);
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
