#include <stdio.h>
#include <stdbool.h>

#define VLEN (32)
#define N (VLEN*33)
short int a[N],b[N],c[N],d[N];

void init(void) {
  int i;  
  for(i=0; i<N;++i) {
    a[i] = i;
    if(i%19==0) {
      b[i] = i+1;
    } else {
      b[i] = i;
    }
    c[i] = -1;
    d[i] = -1;
  }
}

void normal_get(void) {
  int i;
  bool is_same[32];
  for(i=0;i<VLEN;++i) {
    is_same[i] = false;
  }
  for(i=0;i<N;++i) {
    is_same[i%VLEN] = (a[i]==b[i])&(is_same[i%VLEN]);
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
                  short int *restrict x,
                  short int *restrict y) {
  int i;
  svbool_t p0;
  p0 = svptrue_b16();

  for(i=0;i<N;i+=VLEN) {
    svint16_t xi = svld1_s16(p0, (const short *)&(x[i]));
    svint16_t yi = svld1_s16(p0, (const short *)&(y[i]));
    p1 = svcmpeq_s16(p0,xi,yi);
    p2 = svand_b_z(p0, p1, p2);
  }

  for(i=0;i<N;i+=VLEN) {
    svint16_t xi = svld1_s16(p0, (const short *)&(x[i]));
    svst1_s16(p2, (short int *)&(c[i]), xi);
  }
}

void builtin_get(void) {
  builtin_swpl(svptrue_b16(),svpfalse_b(), a, b);
}

int main()
{
  int i;
  init();
  builtin_get();

  normal_get();
  for(i=0;i<N;++i) {
    if(c[i]!=d[i]) {
      printf("NG %d %hd %hd\n",i,c[i],d[i]);
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
