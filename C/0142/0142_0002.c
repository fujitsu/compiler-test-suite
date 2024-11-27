#include <stdio.h>
int main(){
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined (__HPC_ACE__)
  printf("Inf\n");
#else
  double small=1e+250;
  double s;
  s=small*small;
  printf("%f\n",s);
#endif
}
