
#include <stdio.h>
#include <omp.h>

int main() {
  long i;
  long k=100;

  long result[100];

  switch(k) {
  default:
#pragma omp parallel for
    for(i=0;i<k;i++) {
      result[i] = i;
    }
    break;
  }
  for(i=0;i<k;i++) {
    printf(" %ld \n",result[i]);
  }

  return 0;
}
