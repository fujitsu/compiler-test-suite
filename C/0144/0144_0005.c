#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
      char ca;
      char cb;
      unsigned int ld;
      int  tp_debug = 0;

      strcpy(&ca,"M");
#pragma omp parallel firstprivate(ca)
{
#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_thread_num();
#endif

      ca = ld +'0';
      if(tp_debug == 1)
        printf("para ca = %c\n",ca);
}
      printf(" #### C_OMP firstprivate(char)  ####\n");
      if(strncmp(&ca,"M",1) == 0)
	printf("   OK\n");
      else
        printf("   NG!!  ca = %c\n",ca);
      exit (0) ;
}
