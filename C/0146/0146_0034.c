#include <stdio.h>
int main()
{
  double r8;
  int i;

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8++;
  }
  if (r8 != 100) printf("ng101: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++r8;
  }
  if (r8 != 100) printf("ng102: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r8--;
  }
  if (r8 != -100) printf("ng103: %e\n", r8);

  r8 = 0.0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --r8;
  }
  if (r8 != -100) printf("ng104: %e\n", r8);

  printf("pass\n");
  return 0;
}
