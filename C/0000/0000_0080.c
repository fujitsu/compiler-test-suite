#include <stdio.h>
#include <complex.h>
#define N 64

void sub(_Complex float * restrict a,_Complex float * restrict b) {
  int i;
  for(i=0;i<N;i++) {
    a[i] = a[i] + b[i] * 2;
  }
}

int main()
{
  _Complex float dest[N],res[N],src[N];
  int i;
  int ok=1;

#pragma loop nosimd
  for(i=0;i<N;i++) {
    dest[i] = i;
    src[i] = i+2;
    res[i] = dest[i]+src[i]*2;
  }

  sub (dest,src);

#pragma loop nosimd
  for (i = 0;i < N;i++) {
    if (dest[i] != res[i]) {
      printf(" NG: %d: dest=%f  res=%f \n",i,crealf(dest[i]),crealf(res[i]));
      ok = 0;
    }
  }
  if (ok) {
    printf("ok\n");
  }
}
