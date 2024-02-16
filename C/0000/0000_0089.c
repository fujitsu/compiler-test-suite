#include <stdio.h>
#include <complex.h>
#define N 64

void sub(_Complex double * restrict a,_Complex double * restrict b,_Complex double * restrict mask) {
  int i;

  for(i=0;i<N;i++) {
    if (mask[i] != 0) {
    a[i] = a[i] + b[i] * 2;
    }
  }
}

int main()
{
  _Complex double dest[N],res[N],src[N],mask[N];
  int i;
  int ok=1;

#pragma loop nosimd
  for(i=0;i<N;i++) {
    dest[i] = i;
    mask[i] = i;
    src[i] = i+2;
    if (i != 0) {
    res[i] = dest[i]+src[i]*2;
    } else {
      res[i] = i;
    }
  }

  sub (dest,src,mask);

#pragma loop nosimd
  for (i = 0;i < N;i++) {
    if (dest[i] != res[i]) {
      printf(" NG: %d: dest=%f  res=%f \n",i,creal(dest[i]),creal(res[i]));
      ok = 0;
    }
  }
  if (ok) {
    printf("ok\n");
  }
}
