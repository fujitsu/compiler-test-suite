#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[50], ib[50], iw[50], ier;
      int  loop=50;
      int  i, j;

      for(i=0; i<loop; i++)
      {
         ib[i]=(i+1)*100;
         iw[i]=((i+1)%5);
      }
#pragma omp parallel firstprivate(ib,iw) private(j,i)
{
      for(i=0; i<loop ; i++)
      {
         for(j=0; j<loop ; j++)
           if(iw[j]==0) iw[j] = iw[j] + 11;
         ib[i]=ib[i]*iw[i];
      }
      for(i=0; i<loop; i++)
      {
         ia[i] = ib[i];
      }
}
      ier=0;
      for(i=0; i<loop; i++)
      {
         if(ib[i] != (i+1)*100)
	 {
            ier=ier+1;
            printf( "2  i=%d ib[i]=%d must be %d\n",i,ib[i],(i+1)*100);
         }
      }

      for(i=0; i<loop;i++)
      {
         for(j=0; j<loop;j++)
            if(iw[j]==0) iw[j]=iw[j]+11;
         ib[i]=ib[i]*iw[i];
      }

      for(i=0; i<loop; i++)
      {
         if(ia[i]!=ib[i]){
            ier=ier+1;
            printf( "E  i=%d ia[i]=%d ib[i]=%d\n",i,ia[i],ib[i]);
         }
      }
      printf( "-----  --");
      printf( " parallel (forall) -----\n");
      if(ier == 0) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ier=%d\n", ier);
	 for(i=0; i<loop; i++)
	   {
             if(i==0) printf( "      ia=");
	     printf("%d ",ia[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}
