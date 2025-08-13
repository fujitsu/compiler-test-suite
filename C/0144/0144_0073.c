#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void        sub(int *,int);
static int i1[5];
int main()
{
      int o1[5],i,max=4;
      int  tp_debug = 0;

      for(i=0;i<max;i++)
	{
	  o1[i] = 0;
	  i1[i] = i;
	}
      for(i=1;i<max;i++)
	{
          if(o1[i] == i1[i])
	    printf("   tp miss o1[%d ]=%d i1[%d]=%d\n",i,o1[i],i,i1[i]);
	}
      sub(o1,tp_debug);
      printf(" #### C_OMP firstprivate(static int[]) omp_firstprivate_11.c ####\n");
      for(i=0;i<max;i++)
	{
          if(o1[i] == i1[i])
	    printf("   OK");
          else
	    printf("   NG!!  o1[%d ]=%d i1[%d]=%d\n",i,o1[i],i,i1[i]);
	}
      printf("\n");
      exit (0) ;
}

void sub(int *o1,int tp_debug)
{
      unsigned int ld;

#pragma omp parallel firstprivate(i1,ld) num_threads(4)
{
#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_thread_num();
#endif

      o1[ld] = i1[ld];
      if(tp_debug == 1)
        printf("para o1[%d ]=%d \n",ld,o1[ld]);
}
}
