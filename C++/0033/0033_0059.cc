#include <stdio.h>
struct tag {
  unsigned int a:1;
  unsigned int b:1;
}x={1,1};

struct tag func(){ return x; }
int main()
{
  struct tag t;
  int work=0;
#pragma omp parallel
  t = func();
#pragma omp parallel
  if (t.a != 1)
#pragma omp parallel
#pragma omp atomic
    work++;
#pragma omp parallel
  if (t.b != 0)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if ( !work )
    printf("ok\n");
  else
    printf("ng t.a=%d,t.a=%d\n",t.a, t.b);
}
