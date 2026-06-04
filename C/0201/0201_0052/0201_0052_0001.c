#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct TAG {
  int a, b;
};
extern struct TAG st;
#pragma omp threadprivate(st)


void sub()
{
#pragma omp parallel
  {
    if(st.a != 1 || st.b != 2) abort();
#pragma omp single copyprivate(st)
    {
      st.a = 10;
      st.b = 100;
    }
    if(st.a != 10 || st.b != 100) abort();
  }
}

