#include <stdio.h>
int main() {
  char c = 1;
  const int &ri = c;
  int i = 1;
  const char &rc = i;

#pragma omp parallel
  if ((void *)&ri != (void *)&c)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng\n");

#pragma omp parallel
  if ((void *)&rc != (void *)&i)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng\n");

  printf("ok\n");
}
