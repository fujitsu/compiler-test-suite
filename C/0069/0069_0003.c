#include <stdio.h>
#include <omp.h>
int test_can(int nt)
{
  int k, a, res=0;
  k=1;
  a=-1;
#pragma omp parallel 
  {
#pragma omp sections lastprivate(a) reduction(+:k)
    {
#pragma omp section
      {
      a=1;
      k=k+1;
      }
#pragma omp section
      {
      a=2;
      k=k+1;
      }
#pragma omp section
      {
      a=3;
      k=k+1;
      }
#pragma omp section
      {
      a=4;
      k=k+1;
      }
    }
  }
  if( k != 4+1 ) res++;
  if( a != 4   ) res++;
  if( res != 0 ) printf("NG nt=%d, a=%d, k=%d\n",nt,a,k);
  return res;
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
  res = test_can(nt);
  if( res == 0 ) {
    printf("pass\n");
  }
  else {
    printf("NG nt=%d, res=%d\n",nt,res);
  }
  return 0; 
}
