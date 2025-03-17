#include <stdio.h>
struct tag {
  unsigned int a:1;
  unsigned int b:1;
}x={1,1};

struct tag func(){ return x; }
int main()
{
  int a,b,work=0;
#pragma omp parallel
  if ((a=func().a) != 1)
#pragma omp parallel
#pragma omp atomic
    work++;
#pragma omp parallel
  if ((b=func().b) != 0)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if ( !work )
    printf("ok\n");
  else
    printf("ng a=%d,b=%d\n",a,b);

}
