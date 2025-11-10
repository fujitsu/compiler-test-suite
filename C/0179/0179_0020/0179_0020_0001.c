#include <stdio.h>
#define N 1000

extern double func1(int,int,int[]);
extern int pragma_if(int n, int j) ;


int main()
{
  int j = N/2, k;

  k = pragma_if(N, j);
  printf("k = %d\n", k);
}

