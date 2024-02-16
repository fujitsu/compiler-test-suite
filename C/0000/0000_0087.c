#include "stdio.h"
#define N 64

void sub(signed int * restrict a,signed int * restrict b) {
  int i;
  for(i=0;i<N;i++) {
    a[i] = a[i] * 2 + b[i];
  }
}

int main()
{
  signed int dest[N],res[N],src[N];
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
      printf(" NG: %d: dest=%d  res=%d \n",i,dest[i],res[i]);
      ok = 0;
    }
  }
  if (ok) {
    printf("ok\n");
  }
}
