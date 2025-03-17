

#include <stdio.h>
#include <omp.h>

#define ELM_MAX 2
#define ELM_MAX2 3

void sub01(void);


void sub01()
{
  unsigned int i,j;
  unsigned int test_array[2];
  test_array[0] = ELM_MAX;
#pragma omp parallel 
  {
#pragma omp for collapse(2) lastprivate(i,j) ordered 
    for(i=test_array[0]; i>0; --i){
      for(j=ELM_MAX2; j>0; --j){
	
	printf("abc \n");
      }
    }
  }
  printf("last i=%d,j=%d \n",i,j);
}

int main(void) {
  sub01();
  return 0;
}
