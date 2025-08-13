#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

static int i1[4][4];
int main()
{
      int ld=0, o1[4][4], max=4,i,j;
      int  tp_debug = 0;

      for(i=0;i<max;i++)
	{
          i1[i][i] = i;
          o1[i][i] = 0;
        }

      if(tp_debug == 1)
	{
          printf("i1 =");
          for(i=0;i<max;i++)
          for(j=0;j<max;j++)
            printf("%d ",i1[i][j]);
          printf("\n");
	}

      omp_set_num_threads(4) ;
#pragma omp parallel firstprivate(i1) private(ld)
{
#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_thread_num();
#endif
      if(i1[ld][ld] != ld)
	  o1[ld][ld] = ld;
      if(tp_debug == 1)
        printf("para i1[%d][%d] = %d\n",ld,ld,i1[ld][ld]);
}
      printf(" #### C_OMP firstprivate(static int[][])  ####\n");
      for(i=0;i<max;i++)
        {
          if((o1[i][i] != 0) || (i1[i][i] != i) || (ld != 0))
            {
              printf("  NG!!  o1[%d][%d] = %d\n",i,i,o1[i][i]);
              exit (0) ;
            }
        }
      printf("  OK\n");
      exit (0) ;
}
