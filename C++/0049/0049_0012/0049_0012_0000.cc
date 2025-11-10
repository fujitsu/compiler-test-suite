#include <stdio.h>
#include <stdlib.h>

#define N 10003

typedef float res_type;
typedef float arg_type;

extern res_type a[N] __attribute__ ((aligned (16)));
extern arg_type b[N] __attribute__ ((aligned (16)));

#pragma omp declare simd linear(ref(i))
static res_type my_fun_ref(const arg_type &i)
{
  return i + 3;
}

void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun_ref(b[i]);
  }
}

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
    res_type calc = my_fun_ref(i);
    if (res != calc) {
      printf("NG %d %d \n", (int )res, (int )calc);
      abort();
    }
  }

  puts("PASS");
}
