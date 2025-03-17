#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int i=0x80000000;
  unsigned int ui=0x80000000;
  int i16 = 16;
  unsigned int u8 = 8U;
  int j;
  unsigned int uj;

  int work = 0;

#ifdef _OPENMP
  if ( !omp_get_dynamic() && omp_get_nested() && 2 < omp_get_max_threads() ){
    omp_set_num_threads(2);
  }
#endif

#pragma omp parallel
  j = i >> 16U;
#pragma omp parallel
  if (j == 0xffff8000) {
#pragma omp parallel
    uj = ui >> 16;
#pragma omp parallel
    if (uj == 0x00008000) {
#pragma omp parallel
      ui = uj >> 16U;
#pragma omp parallel
      if (ui == 0) {
#pragma omp parallel
	i = j >> u8;
#pragma omp parallel
	if (i == 0xffffff80) {
#pragma omp parallel
	  uj = ui >> i16;
#pragma omp parallel
	  if (uj == 0) {
#pragma omp parallel
	    ui = uj >> u8;
#pragma omp parallel
	    if (ui == 0)
#pragma omp parallel
	      work = 1;
	    else
#pragma omp parallel
	      ;
	  }
	}
      }
    }
  }

  if( work )
    printf("ok\n");
  else
    printf("ng\n");
}
