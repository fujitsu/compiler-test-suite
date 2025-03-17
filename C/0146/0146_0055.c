#include <stdio.h>
#include <omp.h>
int main() {
  signed char       i1;
  signed short      i2;
  signed int        i4;
  signed long int   i8;
  unsigned char     u1;
  unsigned short    u2;
  unsigned int      u4;
  unsigned long int u8;
  setenv("OMP_MAX_ACTIVE_LEVELS","1",1);
  omp_set_dynamic(0);
  omp_set_num_threads(1);

  i1 = 2;
  i2 = 2;
  i4 = 2;
  i8 = 2;
  u1 = 2;
  u2 = 2;
  u4 = 2;
  u8 = 2;

#pragma omp parallel shared(i1)
  {
#pragma omp parallel num_threads(i1)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng1: %d\n", x);
    }
  }

#pragma omp parallel shared(i2)
  {
#pragma omp parallel num_threads(i2)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng2: %d\n", x);
    }
  }

#pragma omp parallel shared(i4)
  {
#pragma omp parallel num_threads(i4)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng3: %d\n", x);
    }
  }

#pragma omp parallel shared(i8)
  {
#pragma omp parallel num_threads(i8)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng4: %d\n", x);
    }
  }

#pragma omp parallel shared(u1)
  {
#pragma omp parallel num_threads(u1)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng5: %d\n", x);
    }
  }

#pragma omp parallel shared(u2)
  {
#pragma omp parallel num_threads(u2)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng6: %d\n", x);
    }
  }

#pragma omp parallel shared(u4)
  {
#pragma omp parallel num_threads(u4)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng7: %d\n", x);
    }
  }

#pragma omp parallel shared(u8)
  {
#pragma omp parallel num_threads(u8)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng8: %d\n", x);
    }
  }

  printf("pass\n");
  return 0;
}
