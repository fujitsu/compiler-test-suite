#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct xxx {
  int a, b;
};
int main()
{
  static struct xxx s;
#pragma omp threadprivate(s)
  int error;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;
#pragma omp parallel
  {
    s.a = 1;
    s.b = 2;
#pragma omp single copyprivate(s)
    {
      s.a = 3;
      s.b = 4;
    }
    if(s.a != 3 || s.b != 4) {
#pragma omp atomic
      error++;
    }
  }
  
  if(error != 0) {
    puts("NG");
  } else {
    puts("pass");
  }
}

