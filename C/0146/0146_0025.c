#include <stdio.h>
int main()
{
  long int value;
  long int i8;
  int i;

  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 *= 2;
  }
  if (i8 != 0x1000000000000000ll) printf("ng101: %lld\n", i8);

  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = i8 * 2;
  }
  if (i8 != 0x1000000000000000ll) printf("ng102: %lld\n", i8);

  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = 2 * i8;
  }
  if (i8 != 0x1000000000000000ll) printf("ng103: %lld\n", i8);

  value = 2;
  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 *= value;
  }
  if (i8 != 0x1000000000000000ll) printf("ng104: %lld\n", i8);

  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = i8 * value;
  }
  if (i8 != 0x1000000000000000ll) printf("ng105: %lld\n", i8);

  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = value * i8;
  }
  if (i8 != 0x1000000000000000ll) printf("ng106: %lld\n", i8);

  value = 1;
  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 *= (value + 1);
  }
  if (i8 != 0x1000000000000000ll) printf("ng107: %lld\n", i8);

  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = i8 * (value + 1);
  }
  if (i8 != 0x1000000000000000ll) printf("ng108: %lld\n", i8);

  i8 = 1;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = (value + 1) * i8;
  }
  if (i8 != 0x1000000000000000ll) printf("ng109: %lld\n", i8);

  printf("pass\n");
  return 0;
}
