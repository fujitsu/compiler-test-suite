#include <stdio.h>
#include <stdlib.h>

#include "000.h"

res_type a[N] __attribute__ ((aligned (16)));
arg_type b[N] __attribute__ ((aligned (16)));
int main()
{
  long i;
  for(i=0;i<N;i++) {
    b[i] = i;
  }
  foo();

  for(i=0;i<N;i+=1) {
    res_type res = a[i];
    res_type calc = my_fun(b[i], 3);
    if (res != calc) {
      printf("NG %d %d \n", (int )res, (int )calc);
      abort();
    }
  }

  puts("PASS");
}
