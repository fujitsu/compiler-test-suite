#include <stdio.h>
struct tag {
  char b0:1;
  char b1:1;
  int  a;
  char b2:2;
  char b3:5;
} bit = { 1,1,10,3 };
int main()
{
  int work=0;
#pragma omp parallel
#if __GNUC__
  if (bit.b2 == -1 && bit.b3 == 0)
#else
  if (bit.b2 == 3 && bit.b3 == 0)
#endif
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if( !work )
    printf("ok %d\n", bit.b3);
  else
    printf("ng %d\n", bit.b3);
}
