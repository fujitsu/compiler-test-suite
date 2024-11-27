
#include <stdio.h>
#define ANS_X 2
#define ANS_Y 4
#define ANS_Z 6

void init(int *x, int *y, int *z) {
  *x = 1;
  *y = 2;
  *z = 3;
}

void test(int x, int y, int z) {
  if (x != ANS_X 
      || y != ANS_Y
      || z != ANS_Z) {
    printf("NG\n");
  }
    printf("OK\n");
}

int main()
{
  int x, y, z;

  init (&x, &y, &z);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(in: x, y, z)
    {
      x = x + 1;
      y = y + 2;
      z = z + 3;
    }
#pragma omp task shared(x) depend(out: x, y, z)
    test(x, y, z);
  }
  return 0;
}
