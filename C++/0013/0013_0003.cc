#include <iostream>
using namespace std;
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

void test(void);

__thread int ii = 20;
int main(void) {

  test();
  if (ii != 20)
    abort();

  puts("PASS");
}

void dummy(int *p) {}

int jj = 10;
#pragma omp threadprivate(jj)

void test(void) {
#pragma omp parallel
  {
    dummy(&jj);
    if (jj != 10)
      abort();
  }
}
