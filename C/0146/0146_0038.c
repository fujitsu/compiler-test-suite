#include <stdio.h>
int main()
{
  unsigned long int value = 1;
  unsigned long int u8;
  int i;

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 += 1;
  }
  if (u8 != 100) printf("ng101: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = u8 + 1;
  }
  if (u8 != 100) printf("ng102: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = 1 + u8;
  }
  if (u8 != 100) printf("ng103: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 += value;
  }
  if (u8 != 100) printf("ng104: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = u8 + value;
  }
  if (u8 != 100) printf("ng105: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = value + u8;
  }
  if (u8 != 100) printf("ng106: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 += (value + 1);
  }
  if (u8 != 200) printf("ng107: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = u8 + (value + 1);
  }
  if (u8 != 200) printf("ng108: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = (value + 1) + u8;
  }
  if (u8 != 200) printf("ng109: %lld\n", u8);

  printf("pass\n");
  return 0;
}
