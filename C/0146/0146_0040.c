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
    u8 |= 1;
  }
  if (u8 != 1) printf("ng101: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = u8 | 1;
  }
  if (u8 != 1) printf("ng102: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    u8 = 1 | u8;
  }
  if (u8 != 1) printf("ng103: %lld\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
    value = i * 2;
#pragma omp atomic
    u8 |= value;
  }
  if (u8 != 0xfe) printf("ng104: %llx\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
    value = i * 2;
#pragma omp atomic
    u8 = u8 | value;
  }
  if (u8 != 0xfe) printf("ng105: %llx\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
    value = i * 2;
#pragma omp atomic
    u8 = value | u8;
  }
  if (u8 != 0xfe) printf("ng106: %llx\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
    value = i;
#pragma omp atomic
    u8 |= (value * 2);
  }
  if (u8 != 0xfe) printf("ng107: %llx\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
    value = i;
#pragma omp atomic
    u8 = u8 | (value * 2);
  }
  if (u8 != 0xfe) printf("ng108: %llx\n", u8);

  u8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
    value = i;
#pragma omp atomic
    u8 = (value * 2) | u8;
  }
  if (u8 != 0xfe) printf("ng109: %llx\n", u8);

  printf("pass\n");
  return 0;
}
