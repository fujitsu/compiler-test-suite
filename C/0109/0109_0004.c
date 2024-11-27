#define N 10000

typedef long res_type;
typedef long arg_type;

res_type a[N*2] __attribute__ ((aligned (16)));
arg_type b[N*2] __attribute__ ((aligned (16)));

#pragma omp declare simd linear(i:2) notinbranch

res_type my_fun(arg_type i)
{
  return b[i] + 3;
}
void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N*2;i+=2) {
    a[i] = my_fun(i);
  }
}

#include <stdio.h>
int main()
{
  long i;
  for(i=0;i<N*2;i++) {
    b[i] = i;
  }
  foo();
  arg_type tmp1 = (N*2)-1;
  arg_type tmp2 = tmp1+3;
  if (a[0] == 3 && a[N*2-1] == 0) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
}
