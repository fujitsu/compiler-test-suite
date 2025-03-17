#include <stdio.h>
#define ANS_X 2
#define ANS_Y 4

typedef struct
{
  int x, y;
} points;

void init(points *a) {
  a->x = 1;
  a->y = 2;
}

void test(points a) {
  if (a.x != ANS_X || a.y != ANS_Y) {
    printf("NG\n");
  }
  printf("OK\n");
}

int main()
{
  points a;

  init (&a);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(a) depend(out: a)
    a.x += 1;
    a.y += 2; 
#pragma omp task shared(a) depend(inout: a)
    test(a);
  }
  return 0;
}
