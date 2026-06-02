#include <stdio.h>

int main() {
  int i;
#pragma omp parallel
  for(i=0;i<10;i++) {
    if (i==3) {
      continue;
    }
    if (i==7) {
      i++;
      i++;
    }
    if (i==8) {
      break;
    }
    if (i==9) {
      break;
    }
  }
  printf("###  OK ###\n");
  return 0;
}
