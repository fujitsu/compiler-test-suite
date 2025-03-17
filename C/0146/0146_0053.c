
#include <stdio.h>
#include <omp.h>
int main() {
  int tnum;
  static int tnum2;
#pragma omp threadprivate(tnum2)
  setenv("OMP_NESTED","TRUE",1);
  omp_set_dynamic(0);
  omp_set_num_threads(1);

  tnum = 2;
#pragma omp parallel shared(tnum)
  {
#pragma omp parallel num_threads(tnum)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng1: %d\n", x);
    }
  }

#pragma omp parallel private(tnum)
  {
    tnum = 2;
#pragma omp parallel num_threads(tnum)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng2: %d\n", x);
    }
  }

#pragma omp parallel firstprivate(tnum) num_threads(1)
  {
#pragma omp parallel num_threads(tnum)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng3: %d\n", x);
    }
  }

#pragma omp parallel reduction(+:tnum)
  {
    tnum = 2;
#pragma omp parallel num_threads(tnum)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng4: %d\n", x);
    }
  }

  tnum2 = 2;
#pragma omp parallel copyin(tnum2)
  {
#pragma omp parallel num_threads(tnum2)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng5: %d\n", x);
    }
  }

  printf("pass\n");
  return 0;
}
