#include <stdio.h>
int main(){
  int a;
  int work=0;
#pragma omp parallel
  a=2;
#pragma omp parallel
  if (a == 2)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;
  if( !work )
    printf("ok\n");
  else
    printf("ng\n");
}
