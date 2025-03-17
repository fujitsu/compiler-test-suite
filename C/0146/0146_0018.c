#include <stdio.h>
int main()
{
  int value = 1;
  int i4, i;

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 += 1;
  }
  if (i4 != 100) printf("ng101: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 = i4 + 1;
  }
  if (i4 != 100) printf("ng102: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 = 1 + i4;
  }
  if (i4 != 100) printf("ng103: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 += value;
  }
  if (i4 != 100) printf("ng104: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 = i4 + value;
  }
  if (i4 != 100) printf("ng105: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 = value + i4;
  }
  if (i4 != 100) printf("ng106: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 += (value + 1);
  }
  if (i4 != 200) printf("ng107: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 = i4 + (value + 1);
  }
  if (i4 != 200) printf("ng108: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4 = (value + 1) + i4;
  }
  if (i4 != 200) printf("ng109: %d\n", i4);

  printf("pass\n");
  return 0;
}
