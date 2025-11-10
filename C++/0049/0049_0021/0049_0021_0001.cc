#include <stdio.h>
#include <stdlib.h>

#include "000.h"

res_type a[N] __attribute__ ((aligned (16)));
int main()
{
  long i;
  for(i=0;i<N;i++) {
    a[i] = i;
  }
  foo(a, N);

  for(i=0;i<N;i+=1) {
    res_type res = a[i];
    my_fun(res, i);
  }

  puts("PASS");
}
