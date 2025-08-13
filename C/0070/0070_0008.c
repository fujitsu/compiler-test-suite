#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

extern void sub(int *, int *, int *, int *, unsigned int);
int main()
{
      int ia1, ia2, ib1[30],ib2[30];
      int ith, ist;
      unsigned int ld, ln;
      int i;

      ia1 = 0;
      ia2 = 0;
      ist = 2;
      for(i=0;i<30;i++)
	{
	  ib1[i] = 0;
          ib2[i] = 0;
        }

#ifdef _OPENMP
      
      if (omp_get_num_threads() == 1){
	ist = 1;
      }
    omp_set_dynamic (1);
    ld=omp_get_dynamic();
#endif
      printf( "omp_get_dynamic=%d\n",ld);

#ifdef _OPENMP
    omp_set_dynamic (0);
    if(ld) omp_set_num_threads (ist);
    ith=omp_get_max_threads();
    omp_set_max_active_levels (1);
    ln=omp_get_max_active_levels();
#endif
#pragma omp parallel
   {
      sub (&ia1, ib1, &ia2, ib2, ln);
   }
      printf( "-----  --");
      printf( " parallel + paralell ----\n");
      if(ia1==ist && (ia2<=pow(ist,2) && ia2>=ith)) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL*2 Directive is not active!\n");
         printf( "      omp_get_max_threads=%d\n",ith);
         printf( "      omp_get_dynamic=%d omp_get_max_active_levels=%d\n",ld,ln);
         printf( "      ia1=%d ia2=%d\n",ia1,ia2);
	 for(i=0;i<30;i++)
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
    exit (0) ;
}

void sub(int *ia1, int ib1[30], int *ia2, int ib2[30], unsigned int ln)
{
      int itn1, itn2, int1,int2;
      int i;

#ifdef _OPENMP
    itn1 = omp_get_thread_num()+1;
    int1 = omp_get_num_threads();
#endif

#pragma omp atomic
      ib1[itn1] += int1;
#pragma omp atomic
      *ia1 += 1;
#pragma omp parallel if(ln) private(itn2,int2)
   {
#ifdef _OPENMP
    itn2 = omp_get_thread_num()+1;
    int2 = omp_get_num_threads();
#endif

#pragma omp atomic
      ib2[itn2] += int2;
#pragma omp atomic
      *ia2 += 1;
   }
   return;
}
