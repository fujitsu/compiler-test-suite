#include <stdio.h>
struct tag {
  char b0:1;
  char b1:1;
} bit = { 1 };
int main()
{
  int work=0;
#pragma omp parallel
#if __GNUC__
  if (bit.b0 == -1)
#else
  if (bit.b0 == 1)
#endif
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

#pragma omp parallel
  if (bit.b1 == 0)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if(!work)
    {
      printf("ok\n");
    }
  else
    {
      printf("ng bit.b0=%d bit.b1=%d\n", bit.b0, bit.b1);
    }
}
