#include <stdio.h>
int main()
{
  unsigned int value = 1;
  unsigned int u4;
  int i;

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 += 1;
  }
  if (u4 != 100) printf("ng101: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 = u4 + 1;
  }
  if (u4 != 100) printf("ng102: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 = 1 + u4;
  }
  if (u4 != 100) printf("ng103: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 += value;
  }
  if (u4 != 100) printf("ng104: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 = u4 + value;
  }
  if (u4 != 100) printf("ng105: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 = value + u4;
  }
  if (u4 != 100) printf("ng106: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 += (value + 1);
  }
  if (u4 != 200) printf("ng107: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 = u4 + (value + 1);
  }
  if (u4 != 200) printf("ng108: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4 = (value + 1) + u4;
  }
  if (u4 != 200) printf("ng109: %d\n", u4);

  printf("pass\n");
  return 0;
}
