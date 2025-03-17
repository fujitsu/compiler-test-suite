#include <stdio.h>
#include <omp.h>
int test_can(void)
{
  int k;
  k=1;
#pragma omp parallel reduction(+:k)
  {
    k=k+1;
  }
  return k;
}

int get_num(void)
{
  int nt;
#pragma omp parallel
  {
#pragma omp master
    {
      nt=omp_get_num_threads();
    }
  }
  return nt;
}

int main() {
  int nt, res;
  nt = get_num();
  res = test_can();
  if( res == nt+1 ) {
    printf("pass\n");
  }
  else {
    printf("NG nt=%d, res=%d\n",nt,res);
  }
  return 0; 
}
