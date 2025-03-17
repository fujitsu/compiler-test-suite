#include <stdio.h>
int main()
{
  unsigned long int value = 1;
  unsigned long int u8;
  int i;

  u8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    u8 <<= 1;
  }
  if (u8 != 0x1000000000000000ll) printf("ng101: %lld\n", u8);

  u8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    u8 = u8 << 1;
  }
  if (u8 != 0x1000000000000000ll) printf("ng102: %lld\n", u8);

  u8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    u8 <<= value;
  }
  if (u8 != 0x1000000000000000ll) printf("ng104: %llx\n", u8);

  u8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    u8 = u8 << value;
  }
  if (u8 != 0x1000000000000000ll) printf("ng105: %llx\n", u8);

  value = 0;
  u8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    u8 <<= (value + 1);
  }
  if (u8 != 0x1000000000000000ll) printf("ng107: %llx\n", u8);

  u8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    u8 = u8 << (value + 1);
  }
  if (u8 != 0x1000000000000000ll) printf("ng108: %llx\n", u8);

  printf("pass\n");
  return 0;
}
