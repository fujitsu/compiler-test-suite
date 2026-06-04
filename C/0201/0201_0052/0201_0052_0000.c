#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  int a, b;
} st = { 1, 2 };

#pragma omp threadprivate(st)

void sub(void);

int main()
{
  sub();
  if(st.a != 10 || st.b != 100) abort();
  puts("pass");
}
