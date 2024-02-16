#include "math.h"
#include "stdio.h"
#define N 64

void sub(float a[N]) {
  long long i;
  for(i=0;i<N;++i) {
    a[i] = a[i] + i;
  }
}


int main()
{
  float dest[N];
  int i;
  int ok=1;

  for(i=0;i<N;i++) {
    dest[i] = 2;
  }

  sub (dest);

  for (i = 0;i < N;i++) {
    if (i+2 != dest[i]) {
      printf(" NG: %d: %f \n",i,dest[i]);
      ok = 0;
    }
  }
  if (ok) {
    printf("ok\n");
  }
}
