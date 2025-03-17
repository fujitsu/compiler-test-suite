#include <stdio.h>
int main()
{
  float r4;
  int i;

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4++;
  }
  if (r4 != 100) printf("ng101: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++r4;
  }
  if (r4 != 100) printf("ng102: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    r4--;
  }
  if (r4 != -100) printf("ng103: %e\n", r4);

  r4 = 0.0f;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --r4;
  }
  if (r4 != -100) printf("ng104: %e\n", r4);

  printf("pass\n");
  return 0;
}
