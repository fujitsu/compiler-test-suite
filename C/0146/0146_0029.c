#include <stdio.h>
struct tag {
  long int a,b,c,d,e,f;
};
int main()
{
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
    p8++;
  }
  if (p8->a != 100) printf("ng101: %lld\n", p8->a);

  p8 = arr;
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    ++p8;
  }
  if (p8->a != 100) printf("ng102: %lld\n", p8->a);

  p8 = &arr[200];
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    p8--;
  }
  if (p8->a != 100) printf("ng103: %lld\n", p8->a);

  p8 = &arr[200];
#pragma omp parallel for
  for (i = 0; i < 100; i++) {
#pragma omp atomic
    --p8;
  }
  if (p8->a != 100) printf("ng104: %lld\n", p8->a);

  printf("pass\n");
  return 0;
}
