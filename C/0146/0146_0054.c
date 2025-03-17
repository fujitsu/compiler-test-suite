#include <stdio.h>
#include <omp.h>
void sub() {
  int tnum;

  tnum = 2;
#pragma omp task shared(tnum)
  {
#pragma omp parallel num_threads(tnum)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng1: %d\n", x);
    }
  }

#pragma omp task private(tnum)
  {
    tnum = 2;
#pragma omp parallel num_threads(tnum)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng2: %d\n", x);
    }
  }

#pragma omp task firstprivate(tnum)
  {
#pragma omp parallel num_threads(tnum)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng3: %d\n", x);
    }
  }
}

int main() {
  setenv("OMP_MAX_ACTIVE_LEVEL","1",1);
  omp_set_dynamic(0);
  omp_set_num_threads(1);

#pragma omp parallel
  {
    sub();
  }

  printf("pass\n");
  return 0;
}
