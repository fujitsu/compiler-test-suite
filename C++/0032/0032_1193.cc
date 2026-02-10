#include <omp.h>
#include <stdio.h>

typedef struct {
 double i ;
 long j;
} aa;

int main()
{
   int i, j;
   double a[100][100] ;

#pragma omp parallel for default(none) shared(j,a)
  for (i = 0; i < 100; i++) {
    aa & vcmi = *((aa *)a[0]);
    

    
    vcmi.i = vcmi.i + i + j ;
  }
  printf("OK\n");
}
