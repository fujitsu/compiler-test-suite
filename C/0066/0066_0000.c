
#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int len = 10;
  int result = 0;
  char org_ary[10]="zyxwvutsr";

#ifdef _OPENMP
  omp_set_num_threads(4);
#endif

#pragma omp parallel
  {
    char array[len];
    int i;

    memset(array,0,len);
    for(i=0;i<9;i++)
      {
	array[i] = 'z'-i;
      }
    if (memcmp(org_ary,array,len))
      {
#pragma omp atomic
	result++;
      }
  }

  if(result)
    {
      printf("NG\n");
    }
  else
    {
      printf("OK\n");
    }
  return 0;
}
