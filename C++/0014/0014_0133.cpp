#include <stdio.h>
#define ANS 7

union UNION
{
  char x;
  short y;
  int z;
  long int w;
};

void init(union UNION *a) {
  a->x = 1;
}

void test(union UNION a) {
  if (a.x != ANS) {
    printf("NG\n");
  }
  printf("OK\n");
}

int main()
{
  union UNION a;

  init (&a);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(a) depend(in: a)
    a.y += 1;
    a.z += 2;
    a.w += 3;
#pragma omp task shared(a) depend(inout: a)
    test(a);
  }
  return 0;
}
