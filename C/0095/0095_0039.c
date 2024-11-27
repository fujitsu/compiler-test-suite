#include <stdlib.h>
#include <stdio.h>
#include <setjmp.h>

jmp_buf env;
long long int j=10LL;
long long int s=0;
int sub(long long int *k);
int main( ) {
long long int k=1;
  if (setjmp(env)) {
    if (k==0x0000001000000000LL && j==10LL && s==9LL) {
      printf(" end\n");
    }
    exit(0);
  }
  printf(" start\n");
  sub(&k);
  printf("ng\n");
}
int sub(long long int *k) {
  for (;s<j; s++) {
    if (s==9LL) longjmp(env,1);
    else {
      printf("ok");
      *k=*k<<s;
#if _WIN32  | i386
      printf(" %.8x %.8x\n", *(((long*)k)+1),*(long*)k) ;
#elif INT64 | LONG64  | __HPC_ACE__

      printf(" %.8x %.8x\n", *(__int32*)k, *(((__int32*)k)+1));
#elif __x86_64__ || __aarch64__
      printf(" %.8x %.8x\n", *(((int*)k)+1),*(int*)k) ;
#else
      printf(" %.8x %.8x\n", *(long*)k, *(((long*)k)+1));
#endif
    }
  }
  return 0;
}
