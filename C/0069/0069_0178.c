
#include <stdio.h>
#include <omp.h>
#define ANS 5

void init(int *x) {
  *x = 100;
}

void test(int x) {
  if (x != ANS) {
    printf("NG\n");
  }
    printf("OK\n");
}

int main()
{
  int x;

  init(&x);  

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) final(x != 0)
    {
#pragma omp task shared(x) depend(out: x)
      {
	if(!omp_in_final()){
	  printf("NG\n");
	} 
	x = x / 20;
      }
#pragma omp task shared(x) depend(inout: x)
      {
	if(!omp_in_final()){
	  printf("NG\n");
	} 
	test(x);
      }
    }
  }

  return 0;
}
