#include <stdio.h>

int main(){
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined (__HPC_ACE__)
  printf("Inf\n");
#else
  double d1;
  d1=1.0/0.0;
  printf("%f\n",d1);
#endif
  return 0;
}
