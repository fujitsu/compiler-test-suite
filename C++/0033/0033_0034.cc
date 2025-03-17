#include <stdio.h>
int main()
{
  short s;
  short &sr=s;
  int work = 0;

#pragma omp parallel
  if ( sizeof (char&) == sizeof (char) &&
       sizeof (sr) == sizeof (short))
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if ( !work )
    printf("ok\n");
  else
    printf("ng\n");
}
