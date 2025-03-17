#include <stdio.h>
int main()
{
  unsigned long int u8;
  int i;

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8++;
  }
  if (u8 != 100) printf("ng101: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++u8;
  }
  if (u8 != 100) printf("ng102: %lld\n", u8);

  u8 = 100;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8--;
  }
  if (u8 != 0) printf("ng103: %lld\n", u8);

  u8 = 100;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --u8;
  }
  if (u8 != 0) printf("ng104: %lld\n", u8);

  printf("pass\n");
  return 0;
}
