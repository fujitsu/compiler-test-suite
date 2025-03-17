#include <stdio.h>
int main()
{
  int i4, i;

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4++;
  }
  if (i4 != 100) printf("ng101: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++i4;
  }
  if (i4 != 100) printf("ng102: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i4--;
  }
  if (i4 != -100) printf("ng103: %d\n", i4);

  i4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --i4;
  }
  if (i4 != -100) printf("ng104: %d\n", i4);

  printf("pass\n");
  return 0;
}
