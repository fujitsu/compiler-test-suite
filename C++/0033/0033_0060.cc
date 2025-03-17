#include <stdio.h>
struct tag {
  unsigned int a:1;
  unsigned int b:1;
}x={1,1};

struct tag func(){ return x; }
int main()
{
  int work=0;
#pragma omp parallel
  if (func().a != 1)
#pragma omp parallel
#pragma omp atomic
    work++;
#pragma omp parallel
  if (func().b != 0)
#pragma omp parallel
    ;

  if ( !work )
    printf("ok\n");
  else
    printf("ng\n");
}
