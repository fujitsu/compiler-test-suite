
#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  int len = 10, result = 0, i;
  char org_ary[10]="rrrrrrrrr", array[len];

  memset(array,'\0',len);
  memset(array,'*',len-1);

#ifdef _OPENMP
  omp_set_num_threads(4);
#endif

#pragma omp parallel for lastprivate(array)
  for(i=0;i<9;i++)
    {
      memset(array,'\0',10);
      memset(array,'z'-i,9);
    }

  if(memcmp(array,org_ary,len)) result++;

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
