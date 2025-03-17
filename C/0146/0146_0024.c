#include <stdio.h>
int main()
{
  long int i8;
  int i;

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8++;
  }
  if (i8 != 100) printf("ng101: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++i8;
  }
  if (i8 != 100) printf("ng102: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    i8--;
  }
  if (i8 != -100) printf("ng103: %lld\n", i8);

  i8 = 0;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --i8;
  }
  if (i8 != -100) printf("ng104: %lld\n", i8);

  printf("pass\n");
  return 0;
}
