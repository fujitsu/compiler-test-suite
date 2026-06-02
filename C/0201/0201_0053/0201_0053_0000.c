#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

union TAG {
  int a[2], b[2];
} st = { 1, 2 };

#pragma omp threadprivate(st)

void sub(void);

int main()
{
  sub();
  if(st.a[0] != 10 || st.b[1] != 100) abort();
  puts("pass");
}
