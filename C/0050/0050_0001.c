
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void test(void);
int main(void)
{
  static __thread int array[2];

  array[0] = 20;
  array[1] = 21;

  test();                           
  if ( array[0] != 20 || array[1] != 21) abort();

  puts("PASS");
}

void dummy(int *p)
{
}

void test(void)
{
  static int array[2];
#pragma omp threadprivate(array)
#pragma omp parallel
  {
    array[0] = 10;
    array[1] = 11;
    dummy(&array);                           
    if ( array[0] != 10 || array[1] != 11) abort();
  }
}
