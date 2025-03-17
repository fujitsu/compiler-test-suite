#include <iostream>
using namespace std;
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

void test(void);
int main(void) {
  static __thread int ii;

  ii = 20;

  test();
  if (ii != 20)
    abort();

  puts("PASS");
}

void dummy(int *p) {}

void test(void) {
  static int ii;
#pragma omp threadprivate(ii)
#pragma omp parallel
  {
    ii = 10;
    dummy(&ii);
    if (ii != 10)
      abort();
  }
}
