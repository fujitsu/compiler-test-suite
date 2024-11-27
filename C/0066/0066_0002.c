
#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int len = 10, result = 0, i;
  char org_ary[10]="zyxwvutsr", array[len];

  memset(array,'\0',len);
  memset(array,'*',len-1);

#ifdef _OPENMP
  omp_set_num_threads(4);
#endif

#pragma omp parallel firstprivate(array)
  {
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

  if (memcmp(org_ary,array,len)==0) result++;

  if(array && result)
    {
      printf("NG\n");
    }
  else
    {
      printf("OK\n");
    }
  return 0;
}
