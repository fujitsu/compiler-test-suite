#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void        sub(char *,int);
static char cb[10];
int main()
{
      char ca[10];
      int  tp_debug = 0;

      strcpy(ca,"NNNN\n");
      strcpy(cb,"COMP\n");
      if(strncmp(ca,cb,4) == 0)
	printf("   tp miss ca=%s cb=%s\n",ca,cb);
      sub(ca,tp_debug);
      printf(" #### C_OMP firstprivate(static char[]) omp_firstprivate_05.c ####\n");
      if(strncmp(ca,cb,4) == 0)
	printf("   OK\n");
      else
        printf("   NG!!  ca=%s         cb=%s\n",ca,cb);
      exit (0) ;
}

void sub(char *ca,int tp_debug)
{
      unsigned int ld;

#pragma omp parallel firstprivate(cb,ld) num_threads(8)
{
#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_thread_num();
#endif

      ca[ld] = cb[ld];
      if(tp_debug == 1)
        printf("para ca = %s\n",ca);
}
}
