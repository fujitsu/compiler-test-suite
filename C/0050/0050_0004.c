
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void test(void);

__thread int ii;
int main(void)
{

  ii = 20;

  test();                           
  if ( ii != 20 ) abort();

  puts("PASS");
}

void dummy(int *p)
{
}

int jj;
#pragma omp threadprivate(jj)

void test(void)
{
#pragma omp parallel
  {
    jj = 10;
    dummy(&jj);                           
    if ( jj != 10 ) abort();
  }
}
