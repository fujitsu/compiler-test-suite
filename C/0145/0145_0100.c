#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 2
#define ELM_MAX2 3



int main(void) {

  unsigned int i,j;
  unsigned int ii[3],jj[3];
  ii[0] = 0;
  ii[1] = ELM_MAX1;
  ii[2] = 1;
  jj[0] = 0;
  jj[1] = ELM_MAX2;
  jj[2] = 1;

#pragma omp parallel
  {
#pragma omp for collapse(2) private(i,j) ordered
    for(i=ii[0]; i<ii[1]; i=i+ii[2]){
      for(j=jj[0]; j<jj[1]; j=j+jj[2]){
	printf("abc \n");
	
      }
    }
  }



  return 0;
}
