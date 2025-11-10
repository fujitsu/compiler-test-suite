#include <stdio.h>
#include <stdlib.h>

#define N 10003

typedef signed int res_type;
typedef signed int arg_type;

extern res_type a[N] __attribute__ ((aligned (16)));
extern arg_type b[N*2] __attribute__ ((aligned (16)));

#pragma omp declare simd linear(ref(i):2)
static res_type my_fun_ref(const arg_type &i)
{
  return i - 3;
}

void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun_ref(b[i*2]);
  }
}

res_type a[N] __attribute__ ((aligned (16)));
arg_type b[N*2] __attribute__ ((aligned (16)));
int main()
{
  long i;
  for(i=0;i<N;i++) {
    b[i*2] = i;
  }
  foo();

  for(i=0;i<N;i+=1) {
    res_type res = a[i];
    res_type calc = my_fun_ref(i);
    if (res != calc) {
      printf("NG %d %d \n", (int )res, (int )calc);
      abort();
    }
  }

  puts("PASS");
}
