#include <stdio.h>
int main()
{
  int work = 0;
#pragma omp parallel
  if ( sizeof('\x7') == 1 && sizeof('\037') == 1 )
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if( !work )
    printf("ok\n");
  else
    printf(" sizeof('\\x7') : %d \n sizeof('\\037') : %d \n",
	   sizeof('\x7'), sizeof('\037'));
}
