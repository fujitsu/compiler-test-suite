#include <stdio.h>
int main()
{
  char c = 1;
  const int & r = c; 
  int work = 0;
#pragma omp parallel
  if( r == 1 )
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if( !work )
    printf("ok\n");
  else
    printf("ng r : %d \n", r);
}
