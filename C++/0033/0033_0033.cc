#include <stdio.h>
struct sttag1 {
  short int s;
};
int main() {
  struct sttag1 st1;
  int work = 0;

#pragma omp parallel
  st1.s = 1;
#pragma omp parallel
  if (st1.s != 1)
#pragma omp parallel
#pragma omp atomic
    work++;

  if (!work)
    printf("ok\n");
  else
    printf("ng %d\n", st1.s);
}
