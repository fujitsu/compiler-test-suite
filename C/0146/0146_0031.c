#include <stdio.h>
int main()
{
  float value = 1;
  float r4;
  int i;

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 += 1.0f;
  }
  if (r4 != 100) printf("ng101: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 = r4 + 1.0f;
  }
  if (r4 != 100) printf("ng102: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 = 1.0f + r4;
  }
  if (r4 != 100) printf("ng103: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 += value;
  }
  if (r4 != 100) printf("ng104: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 = r4 + value;
  }
  if (r4 != 100) printf("ng105: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 = value + r4;
  }
  if (r4 != 100) printf("ng106: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 += (value + 1.0f);
  }
  if (r4 != 200) printf("ng107: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 = r4 + (value + 1.0f);
  }
  if (r4 != 200) printf("ng108: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4 = (value + 1.0f) + r4;
  }
  if (r4 != 200) printf("ng109: %e\n", r4);

  printf("pass\n");
  return 0;
}
