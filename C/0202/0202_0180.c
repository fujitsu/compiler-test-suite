#include <stdio.h>
int main() {
  int i=0;
#pragma omp parallel
  while(i<10) {
    i++;
    break;
  }
  printf("###  OK ###\n");
  return 0;
}
