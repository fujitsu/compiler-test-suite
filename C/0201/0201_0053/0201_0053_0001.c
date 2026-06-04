#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

extern union TAG {
  int a[2], b[2];
} st;

#pragma omp threadprivate(st)


void sub()
{
#pragma omp parallel
  {
    if(st.a[0] != 1 || st.b[1] != 2) abort();
#pragma omp single copyprivate(st)
    {
      st.a[0] = 10;
      st.b[1] = 100;
    }
    if(st.a[0] != 10 || st.b[1] != 100) abort();
  }
}

