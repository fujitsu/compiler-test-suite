#include <iostream>
using namespace std;
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

void test(void);
int main(void) {
  static __thread struct TAG {
    int ii;
  } st = {20};

  test();
  if (st.ii != 20)
    abort();

  puts("PASS");
}

void dummy(int *p) {}

void test(void) {
  static struct TAG {
    int ii;
  } st = {10};
#pragma omp threadprivate(st)
#pragma omp parallel
  {
    dummy(&st.ii);
    if (st.ii != 10)
      abort();
  }
}
