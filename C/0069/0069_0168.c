
#include <stdio.h>
#define ANS_X 1
#define ANS_Y 2

void init(int *x, int *y) {
  *x = 1;
  *y = 2;
}

void test(int x, int y) {
  if (x != ANS_X || y != ANS_Y) {
    printf("NG\n");
  }
    printf("OK\n");
}

int main()
{
  int x, y;

  init (&x, &y);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x,y) depend(out: x) depend(out: y)
    test(x, y);
#pragma omp task shared(x,y) depend(in: x) depend(out: y)
    {
      x = x + 1;
      y = y + 2;
    }
  }
  return 0;
}
