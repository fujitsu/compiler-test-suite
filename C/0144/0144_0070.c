#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ld=0, i1[4], max=4,i;
      int  tp_debug = 0;

      for(i=0;i<max;i++)
        i1[i] = 1;

      if(tp_debug == 1)
	{
          printf("i1 =");
          for(i=0;i<max;i++)
            printf("%d ",i1[i]);
          printf("\n");
	}
#pragma omp parallel firstprivate(ld) num_threads(4)
{
#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_thread_num();
#endif
      i1[ld] = ld;
      if(tp_debug == 1)
        printf("para i1[%d] = %d\n",ld,i1[ld]);
}
      printf(" #### C_OMP firstprivate(int) omp_firstprivate_07.c ####\n");
      for(i=0;i<max;i++)
        {
          if((i1[i] != i) || (ld != 0))
            {
              printf("  NG!!  i1[%d] = %d\n",i,i1[i]);
              exit (0) ;
            }
        }
      printf("  OK\n");
      exit (0) ;
}
