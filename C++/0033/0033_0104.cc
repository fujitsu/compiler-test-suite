#include <stdio.h>
int main() {
  int i = 0;
  const int &a = i + 1;
  int work = 0;

#pragma omp parallel
  if (i ? 0 : a)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if (!work)
    printf("ok\n");
  else
    printf("ng = %d \n", a);
}
