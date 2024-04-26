#include <stdio.h>

#if !defined (__STDC_NO_THREADS__)
#  include <threads.h>
#endif

int main(void){
#if defined (thread_local)
  printf("ok\n");
#endif

  return 0;
}
