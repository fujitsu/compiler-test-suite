#include <stdio.h>
int main()
{
  double value = 1;
  double r8;
  int i;

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 += 1.0;
  }
  if (r8 != 100) printf("ng101: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 = r8 + 1.0;
  }
  if (r8 != 100) printf("ng102: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 = 1.0 + r8;
  }
  if (r8 != 100) printf("ng103: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 += value;
  }
  if (r8 != 100) printf("ng104: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 = r8 + value;
  }
  if (r8 != 100) printf("ng105: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 = value + r8;
  }
  if (r8 != 100) printf("ng106: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 += (value + 1.0);
  }
  if (r8 != 200) printf("ng107: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 = r8 + (value + 1.0);
  }
  if (r8 != 200) printf("ng108: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8 = (value + 1.0) + r8;
  }
  if (r8 != 200) printf("ng109: %e\n", r8);

  printf("pass\n");
  return 0;
}
