#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int it, ier;
      int  loop = 10, thread=4;
      char sa[10]={"abc"};
      char sb[10][10], sc[10];
      int i,j;

      memset(sb,' ',10*10);
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(sa,it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
      
      switch (it)
	{
	case 1:
	case 5:
          strcpy(sa,"        01");
	  break;
	case 2:
	case 6:
          strcpy(sa,"        02");
	  break;
	case 3:
	case 7:
          strcpy(sa,"        03");
	  break;
	case 4:
	case 8:
          strcpy(sa,"        04");
	  break;
	}
      memcpy(sb[it-1],sa,10);
}
      ier = 0;
      for(i=0; i<thread; i++){
         switch (i)
	   {
	   case 0:
	   case 4:
             strcpy(sc,"        01");
	     break;
	   case 1:
	   case 5:
             strcpy(sc,"        02");
	     break;
	   case 2:
	   case 6:
             strcpy(sc,"        03");
	     break;
	   case 3:
	   case 7:
             strcpy(sc,"        04");
	   break;
	   }
         if(strncmp(sb[i],sc,10)!=0) ier=ier+1 ;
      }
      for (i=thread; i<loop; i++){
         if(strncmp(sb[i],"          ",10)!=0) ier=ier+1 ;
      }
      printf( "-----  --");
      printf( " parallel private(sa,it) ------\n");
      if(!strncmp(sa,"abc",3) && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     sa=%s\n",sa);
         printf( "     sb=%s\n",sb);
      }
   exit (0) ;
}
