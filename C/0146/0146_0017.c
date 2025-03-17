#include <stdio.h>
int main()
{
  int i4[2], i;
  int j[2];

  i4[1] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4[1]++;
  }
  if (i4[1] != 100) printf("ng101: %d\n", i4[1]);

  i4[1] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++i4[1];
  }
  if (i4[1] != 100) printf("ng102: %d\n", i4[1]);

  i4[1] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4[1]--;
  }
  if (i4[1] != -100) printf("ng103: %d\n", i4[1]);

  i4[1] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --i4[1];
  }
  if (i4[1] != -100) printf("ng104: %d\n", i4[1]);


  j[1] = 1;
  i4[j[1]] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4[j[1]]++;
  }
  if (i4[j[1]] != 100) printf("ng105: %d\n", i4[j[1]]);

  i4[j[1]] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++i4[j[1]];
  }
  if (i4[j[1]] != 100) printf("ng106: %d\n", i4[j[1]]);

  i4[j[1]] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4[j[1]]--;
  }
  if (i4[j[1]] != -100) printf("ng107: %d\n", i4[j[1]]);

  i4[j[1]] = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --i4[j[1]];
  }
  if (i4[j[1]] != -100) printf("ng108: %d\n", i4[j[1]]);

  printf("pass\n");
  return 0;
}
