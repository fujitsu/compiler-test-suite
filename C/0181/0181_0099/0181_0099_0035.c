#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif






int lto_sub_35()
{
      int  ia[50], ier;
      int  loop=50;
      int  it1[50];
      int  pt1;
      int  j;

      for (j=0; j<loop; j++)
      {
         it1[j]=(((j+1)*11) % 21);
      }

#pragma omp parallel
{
#pragma omp for private(pt1)
      for (j=0; j<loop; j++)
      {
         pt1 = it1[j];
         ia[j] = pt1;
      }
}

      ier = 0;
      for (j=0; j<loop; j++)
      {
          if (ia[j] != it1[j]) {
             ier=ier+1;
             printf( "E  j=%d ia[%d]=%d it1[%d]=%d\n",j,j,ia[j],j,it1[j]);
          }
      }

      printf( " parallel");
      printf( " do private(pt1) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
      }
   return (0) ;
}
