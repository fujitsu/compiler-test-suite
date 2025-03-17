#include <stdio.h>
int main()
{
  long int value = 1;
  long int i8;
  int i;

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 += 1;
  }
  if (i8 != 100) printf("ng101: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 = i8 + 1;
  }
  if (i8 != 100) printf("ng102: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 = 1 + i8;
  }
  if (i8 != 100) printf("ng103: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 += value;
  }
  if (i8 != 100) printf("ng104: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 = i8 + value;
  }
  if (i8 != 100) printf("ng105: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 = value + i8;
  }
  if (i8 != 100) printf("ng106: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 += (value + 1);
  }
  if (i8 != 200) printf("ng107: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 = i8 + (value + 1);
  }
  if (i8 != 200) printf("ng108: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8 = (value + 1) + i8;
  }
  if (i8 != 200) printf("ng109: %lld\n", i8);

  printf("pass\n");
  return 0;
}
