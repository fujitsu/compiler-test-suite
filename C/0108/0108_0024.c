#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int main() {
  int i,j;
  int aa[3000][100];
  
#pragma omp parallel for
  for (j = 0; j < 3000; j++) {
    for (i = 0; i < 100; i++) {
      aa[j][i] = i+j; 
    }
  }

  printf ("%d\n", aa[2999][99]);
}
