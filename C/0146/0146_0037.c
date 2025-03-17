#include <stdio.h>
int main()
{
  unsigned int u4;
  int i;

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4++;
  }
  if (u4 != 100) printf("ng101: %d\n", u4);

  u4 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++u4;
  }
  if (u4 != 100) printf("ng102: %d\n", u4);

  u4 = 100;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u4--;
  }
  if (u4 != 0) printf("ng103: %d\n", u4);

  u4 = 100;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --u4;
  }
  if (u4 != 0) printf("ng104: %d\n", u4);

  printf("pass\n");
  return 0;
}
