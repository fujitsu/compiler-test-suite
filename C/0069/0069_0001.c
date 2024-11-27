#include <stdio.h>
#include <omp.h>
int test_can(void)
{
  int k, i, s=0, e=10;
  k=1;
#pragma omp parallel 
  {
#pragma omp for reduction(+:k)
    for( i=s;i<e;i++ ) {
      k=k+1;
    }
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
  if( res == 11 ) {
    printf("pass\n");
  }
  else {
    printf("NG nt=%d, res=%d\n",nt,res);
  }
  return 0; 
}
