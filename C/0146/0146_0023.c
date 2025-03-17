#include <stdio.h>
int main()
{
  long int value;
  long int i8;
  int i;

  i8 = 0x1000000000000000ll;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 /= 2;
  }
  if (i8 != 1) printf("ng101: %lld\n", i8);

  i8 = 0x1000000000000000ll;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = i8 / 2;
  }
  if (i8 != 1) printf("ng102: %lld\n", i8);

  value = 2;
  i8 = 0x1000000000000000ll;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 /= value;
  }
  if (i8 != 1) printf("ng104: %lld\n", i8);

  i8 = 0x1000000000000000ll;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = i8 / value;
  }
  if (i8 != 1) printf("ng105: %lld\n", i8);

  value = 1;
  i8 = 0x1000000000000000ll;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 /= (value + 1);
  }
  if (i8 != 1) printf("ng107: %lld\n", i8);

  i8 = 0x1000000000000000ll;
#pragma omp parallel for
  for (i = 0; i < 60; i++) {
#pragma omp atomic
    i8 = i8 / (value + 1);
  }
  if (i8 != 1) printf("ng108: %lld\n", i8);

  printf("pass\n");
  return 0;
}
