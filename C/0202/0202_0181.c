#include <stdio.h>
int main() {
  int i=0;
#pragma omp parallel
  do {
    i++;
    break;
  } while (i < 10);
  printf("###  OK ###\n");
  return 0;
}
