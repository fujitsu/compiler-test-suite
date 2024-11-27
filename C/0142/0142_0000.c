#include <stdio.h>
int main(){
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(__HPC_ACE__)
  printf("Inf\n");
#else
  double d1,d2=1.0,d3=0.0;
  d1=d2/d3;
  printf("%f\n",d1);
#endif
  return 0;
}
