#include <stdio.h>
#include <omp.h>
int main() {
  int i, a, b, n, num;
  a = -99;
#pragma omp parallel
  {
#pragma omp master
    num = omp_get_num_threads();
#pragma omp for ordered firstprivate(a) lastprivate(a)
    for (i=0;i<10;i++) {
#pragma omp ordered
      {
        a = a + 1;
      }
    }
  }
  
  if( (n=10/num) == 0 ) n = 1;
  for( b=-99;n>0;n-- ) b = b + 1;
  if( a == b ) printf("OK\n");
  else {
    printf("NG a,b=%d, %d\n", a,b);
  }
  return 0;
}
