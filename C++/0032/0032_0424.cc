#include <stdio.h>
int main()
{
  int ia;
  int i;

  ia = 0;

#pragma omp parallel
  {
#pragma omp for
    for(i=0; i<100; i++)
      {
#pragma omp atomic
        ia += (i+1);
      }
  }

  printf(" OK \n",ia);
  return 0;
}
