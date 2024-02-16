#include "stdio.h"
#define N 64

void sub(int * restrict a) {
  int i;
  int xx;
  for(i=0;i<N;i++) {
    xx = 10;
    if (i > 3) {
      xx = xx * a[i];
    }
    a[i] = xx;
  }
}

int main()
{
  int dest[N],res[N];
  int i;
  int ok=1;

#pragma loop nosimd
  for(i=0;i<N;i++) {
    dest[i] = i;
    res[i] = i * 10;
  }
#pragma loop nosimd
  for(i=0;i<4;i++) {
    res[i] = 10;
  }

  sub (dest);

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
