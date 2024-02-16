#include "stdio.h"
#define N 64

void sub(float * restrict a,float * restrict b) {
  int i;
  for(i=0;i<N;i++) {
    a[i] = a[i] *2.0 + b[i] ;
  }
}

int main()
{
  float dest[N],res[N],src[N];
  int i;
  int ok=1;

#pragma loop nosimd
  for(i=0;i<N;i++) {
    dest[i] = i;
    src[i] = i+2;
    res[i] = dest[i]*2.0+src[i];
  }

  sub (dest,src);

#pragma loop nosimd
  for (i = 0;i < N;i++) {
    if (dest[i] != res[i]) {
      printf(" NG: %d: dest=%f  res=%f \n",i,dest[i],res[i]);
      ok = 0;
    }
  }
  if (ok) {
    printf("ok\n");
  }
}
