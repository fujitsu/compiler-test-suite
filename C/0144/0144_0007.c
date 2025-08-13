#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void        sub(int);
static char ca;
int main()
{
      char cb;
      int  tp_debug = 0;

      //strcpy(&ca,"M");
      ca = 'M' ;
      sub(tp_debug);
      printf(" #### C_OMP firstprivate(static char)  ####\n");
      if(strncmp(&ca,"M",1) == 0)
	printf("   OK\n");
      else
        printf("   NG!!  ca = %c\n",ca);
      exit (0) ;
}

void sub(int tp_debug)
{
      unsigned int ld;

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
}
