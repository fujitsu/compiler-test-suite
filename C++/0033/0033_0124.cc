#include <stdio.h>
int main() {
  int work = 0;
#pragma omp parallel
  if (sizeof('A') == sizeof(char) && sizeof('AB') == sizeof(int))
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if (!work)
    printf("ok\n");
  else
    printf("ng\n");
}
