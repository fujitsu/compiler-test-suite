#include <stdio.h>
int main()
{
  int value = 1;
  int arr[201];
  int *p8;
  int i;

  for (i = 0; i <= 200; i++) {
    arr[i] = i;
  }
  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 += 1;
  }
  if (*p8 != 100) printf("ng101: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = p8 + 1;
  }
  if (*p8 != 100) printf("ng102: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = 1 + p8;
  }
  if (*p8 != 100) printf("ng103: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 += value;
  }
  if (*p8 != 100) printf("ng104: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = p8 + value;
  }
  if (*p8 != 100) printf("ng105: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = value + p8;
  }
  if (*p8 != 100) printf("ng106: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 += (value + 1);
  }
  if (*p8 != 200) printf("ng107: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = p8 + (value + 1);
  }
  if (*p8 != 200) printf("ng108: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = (value + 1) + p8;
  }
  if (*p8 != 200) printf("ng109: %d\n", *p8);

  printf("pass\n");
  return 0;
}
