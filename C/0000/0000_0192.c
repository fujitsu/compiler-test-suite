#include "stdio.h"
#include "math.h"
#include "complex.h"
#define N 64

void sub(_Complex float a[N]) {
  long long i;
  for(i=0;i<N;++i) {
    a[i] = a[i] + i;
  }
}


int main()
{
  _Complex float dest[N];
  int i;
  int ok=1;

#pragma loop nosimd
  for(i=0;i<N;i++) {
    dest[i] = 2;
  }

  sub (dest);

#pragma loop nosimd
  for (i = 0;i < N;i++) {
    if (i+2 != dest[i]) {
      printf(" NG: %d: %f  %f \n",i,crealf(dest[i]), cimagf(dest[i]));
      ok = 0;
    }
  }
  if (ok) {
    printf("ok\n");
  }
}
