#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
      char ca[5], cb[5], cc[5];
      int  i;
      unsigned int ld;
      int  tp_debug = 0;

      strcpy(ca,"NNNN\n");
      strcpy(cb,"OMP0\n");
      strcpy(cc,"NNNN\n");

      if(tp_debug == 1)
        printf("ca = %s",ca);
      if(strncmp(ca,cc,4) != 0)
	{
	  printf("   tp miss\n");
	}
#pragma omp parallel firstprivate(ca)
{
#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_thread_num();
#endif
      ca[ld] = cb[ld];
      if(tp_debug == 1)
	printf("para 1 ca = %s",ca);
}
      if(tp_debug == 1)
	printf("ca = %s",ca);

      printf(" #### C_OMP firstprivate(char[])  ####\n");
      if(strncmp(ca,cc,4) == 0)
	{
	  printf("   OK\n");
	}
      else
	{
	  printf("   NG\n");
	  printf("ca = %s",ca);
	  printf("cb = %s",cb);
	}
      exit (0) ;
}
