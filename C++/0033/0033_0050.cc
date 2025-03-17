#include <stdio.h>
int main()
{
  char c = 2;
  int i = 0x08080808;
  int work,count=0;
#pragma omp parallel
  work = i << c;
#pragma omp parallel
  if( work == 0x20202020 ) {
#pragma omp parallel
    i = work >> c;
#pragma omp parallel
    if( i == 0x08080808 )
#pragma omp parallel
      ;
    else
#pragma omp parallel
#pragma omp atomic
      count++;
  }

  if ( !count )
    printf("ok\n");
  else
    printf("ng\n");
}
