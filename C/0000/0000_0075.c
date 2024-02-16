#include "stdio.h"
#define N 64

void sub(double * restrict a) {
  int i;
  double xx;
#pragma loop unroll(5)
  for(i=0;i<N;i++) {
    xx = 10;
    if (i > 3) {
      xx = xx - a[i];
    }
    a[i] = xx;
  }
}

int main()
{
  double dest[N],res[N];
  int i;
  int ok=1;

#pragma loop nosimd
  for(i=0;i<N;i++) {
    dest[i] = i;
    res[i] = 10-i;
  }
#pragma loop nosimd
  for(i=0;i<4;i++) {
    res[i] = 10;
  }

  sub (dest);

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
