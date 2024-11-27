#include <stdio.h>
#include <omp.h>

int main(void) {
  int i;

#pragma omp parallel
  {
#pragma omp for private(i) ordered
    for(i=0; i<2; i=1+i){
#pragma omp ordered    
      printf("i= %d \n",i);
    }
  }
  return 0;
}
