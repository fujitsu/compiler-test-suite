#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif




int lto_sub_12()
{
    int ia1, ib1[30], itn1, int1;
    int ia2, ib2[30], itn2, int2;
    int ith, ist;
    int i;
    unsigned int ld, ln;


    ia1 = 0;
    ia2 = 0;
    for(i=0;i<30;i++)
      {
        ib1[i] = 0;
        ib2[i] = 0;
      }
    ist = 2;

#ifdef _OPENMP
    omp_set_dynamic (1);
    ld=omp_get_dynamic();
#endif

    printf( " omp_get_dynamic=%u \n",ld);

#ifdef _OPENMP
    if (omp_get_max_threads() < 2)
#endif
    {

      printf( " parallel + paralell ----\n");
      printf( " OK \n");
      return 0;
    }

#ifdef _OPENMP
    if(ld) omp_set_num_threads (ist);
    ith = omp_get_max_threads();
    omp_set_max_active_levels(1);
    ln=omp_get_max_active_levels();
#endif

#pragma omp parallel private(itn1,int1)
    {
#ifdef _OPENMP
      itn1 = omp_get_thread_num();
      int1 = omp_get_num_threads();
#else
      itn1 = 0;
      int1 = 0;
#endif


#pragma omp atomic
      ib1[itn1] += int1;
#pragma omp atomic
      ia1 += 1;
#pragma omp parallel if(ln) private(itn2,int2)
        {
#ifdef _OPENMP
          itn2 = omp_get_thread_num()+1;
          int2 = omp_get_num_threads();
#endif


#pragma omp atomic
            ib2[itn2] += int2;
#pragma omp atomic
            ia2 += 1;
        }
    }

    printf( " parallel + paralell ----\n");
    if((ia1==ist && (ia2<=pow(ist,2) && ia2>=ith)))
      {
        printf( " OK \n");
      }
    else
      {
        printf( " NG!   PARALLEL*2 Directive is not active!\n");
        printf( "       omp_get_max_threads=%d \n",ith);
        printf( "       omp_get_dynamic=%u  omp_get_max_active_levels=%u \n",ld,ln);
        printf( "       ia1=%d  ia2=%d\n",ia1,ia2);
        for(i=0;i<30 ;i++)
          {
            if(i==0) printf("       ib1=");
            printf( "%d ",ib1[i]);
          }
        printf("\n");
        for(i=0;i<30;i++)
          {
            if(i==0) printf("       ib2=");
            printf( "%d ",ib2[i]);
          }
        printf("\n");
      }
    return 0;
}
    
