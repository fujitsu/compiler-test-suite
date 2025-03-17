#include <stdio.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

long long int lli1=0x8000000000000000;
int main()
{
	long long int lli2;
	int work = 0;
	int num = 1;

#pragma omp parallel
	lli2 = 0x8000000010000000;

#if defined(__aarch64__) || defined(__x86_64__)
#pragma omp parallel
	if (*((int *)(&lli2)+1) == 0x80000000)
#else
#pragma omp parallel
	if (*((int *)(&lli2)+1) == 0x10000000)
#endif
#pragma omp parallel
#pragma omp atomic
	  work++;
	else
#pragma omp parallel
	  printf("ng %x\n",*((int *)(&lli2)+1));

#ifdef _OPENMP
	if ( !omp_get_dynamic() && omp_get_nested() ){
	  num = pow(omp_get_max_threads(),2);
	} else if ( omp_get_nested()){
	  if ( omp_get_num_procs() < pow(omp_get_max_threads(),2)){
	    num = omp_get_num_procs();
	  } else {
	    num = pow(omp_get_max_threads(),2);
	  }
	} else {
	  num = omp_get_max_threads();
	}
#endif

	if ( num == work )
	  printf("ok\n");
	else
	  printf("ng:work=%d:num=%d\n",work,num);
}
