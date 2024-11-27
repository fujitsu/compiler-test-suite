#include <stdlib.h>
#include <math.h>
#include <setjmp.h>
#include <stdio.h>
jmp_buf env;
long int j=9;
long int s=0;
int sub(long int *k);
int main( ) {
#if defined(__aarch64__) || defined(__x86_64__)
volatile long int k=1;
#else
long int k=1;
#endif
  if (setjmp(env)) {
    if (k==0x10000000 && j==9 && s==8) {
      printf(" end\n");
    }
    exit(0);
  }
  printf(" start\n");
  sub(&k);
  printf("ng\n");
exit (0);
}
int sub(k) long int *k; {
  for (;s<j; s++) {
    if (s==8) longjmp(env,1);
    else {
      printf("ok");
      *k=*k<<s;
      printf(" %.8x\n", *k);
    }
  }
  return 0;
}
