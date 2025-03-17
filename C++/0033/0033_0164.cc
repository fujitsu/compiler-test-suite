#include <stdio.h>

enum { E32p23a=4 }; 
int main()
{
  int work=0;
#pragma omp parallel
  if ( ::E32p23a == 4)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;
  
  if(!work)
    printf("ok\n");
  else
    printf("ng ::E32p23a : %d \n", ::E32p23a);
}
