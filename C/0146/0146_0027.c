#include <stdio.h>
int main()
{
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
    p8++;
  }
  if (*p8 != 100) printf("ng101: %d\n", *p8);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++p8;
  }
  if (*p8 != 100) printf("ng102: %d\n", *p8);

  p8 = &arr[200];
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8--;
  }
  if (*p8 != 100) printf("ng103: %d\n", *p8);

  p8 = &arr[200];
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --p8;
  }
  if (*p8 != 100) printf("ng104: %d\n", *p8);

  printf("pass\n");
  return 0;
}
