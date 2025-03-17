#include <stdio.h>
struct tag {
  long int a,b,c,d,e,f;
};
int main()
{
  int value = 1;
  struct tag arr[201];
  struct tag *p8;
  int i;

  for (i = 0; i <= 200; i++) {
    arr[i].a = i;
  }
  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 += 1;
  }
  if (p8->a != 100) printf("ng101: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = p8 + 1;
  }
  if (p8->a != 100) printf("ng102: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = 1 + p8;
  }
  if (p8->a != 100) printf("ng103: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 += value;
  }
  if (p8->a != 100) printf("ng104: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = p8 + value;
  }
  if (p8->a != 100) printf("ng105: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = value + p8;
  }
  if (p8->a != 100) printf("ng106: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 += (value + 1);
  }
  if (p8->a != 200) printf("ng107: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = p8 + (value + 1);
  }
  if (p8->a != 200) printf("ng108: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8 = (value + 1) + p8;
  }
  if (p8->a != 200) printf("ng109: %lld\n", p8->a);

  printf("pass\n");
  return 0;
}
