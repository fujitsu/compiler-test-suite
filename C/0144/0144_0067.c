#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      char ca[10], cb[10];
      int  i;
      unsigned int ld;
      int  tp_debug = 0;

      strcpy(ca,"NNNN\n");
      strcpy(cb,"OMP0\n");

      if(tp_debug == 1)
        printf("ca = %s",ca);
      if(strncmp(ca,cb,4) == 0)
	{
	  printf("   tp miss\n");
          printf("           ca = %s",ca);
          printf("           cb = %s",cb);
	}

#pragma omp parallel firstprivate(cb) private(ld) num_threads(8)
{
#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_thread_num();
#endif
      ca[ld] = cb[ld];
      if(tp_debug == 1)
	printf("para 2 ca = %s",ca);
}
      if(tp_debug == 1)
	printf("ca = %s",ca);

      printf(" #### C_OMP firstprivate(char[]) omp_firstprivate_03.c ####\n");
      if(strncmp(ca,cb,4) == 0)
	{
	  printf("   OK\n");
	}
      else
	{
	  printf("   NG\n");
          printf("      ca = %s",ca);
          printf("      cb = %s",cb);
	}
      exit (0) ;
}
