#include <stdio.h>
int main() {
  static double dd1;
  static double dd2 = 1.0;
#pragma omp threadprivate(dd1, dd2)

  {
    static double dd3;
    static double dd4 = 2.0;
#pragma omp threadprivate(dd3, dd4)
#pragma omp parallel
    {
      if (dd1 != 0.0)
        printf("main_0 ng001\n");
      if (dd2 != 1.0)
        printf("main_0 ng002\n");
      if (dd3 != 0.0)
        printf("main_0 ng003\n");
      if (dd4 != 2.0)
        printf("main_0 ng004\n");
    }
#pragma omp parallel
    {
      dd3 = 30;
      dd4 = 40;
    }
#pragma omp parallel
    {
      if (dd3 != 30.0)
        printf("main_1 ng001\n");
      if (dd4 != 40.0)
        printf("main_1 ng002\n");
    }
  }

#pragma omp parallel
  {
    if (dd1 != 0.0)
      printf("main_3 ng001\n");
    if (dd2 != 1.0)
      printf("main_3 ng002\n");
  }
#pragma omp parallel
  {
    dd1 = 10;
    dd2 = 20;
  }
#pragma omp parallel
  {
    if (dd1 != 10.0)
      printf("main_4 ng001\n");
    if (dd2 != 20.0)
      printf("main_4 ng002\n");
  }
  printf("pass\n");
  return 0;
}
