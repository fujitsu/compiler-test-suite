#include <stdio.h>
int main()
{
  int i4, i;
  int *p;
  p = &i4;

  (*p) = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    (*p)++;
  }
  if ((*p) != 100) printf("ng101: %d\n", (*p));

  (*p) = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++(*p);
  }
  if ((*p) != 100) printf("ng102: %d\n", (*p));

  (*p) = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    (*p)--;
  }
  if ((*p) != -100) printf("ng103: %d\n", (*p));

  (*p) = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --(*p);
  }
  if ((*p) != -100) printf("ng104: %d\n", (*p));

  printf("pass\n");
  return 0;
}
