#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main() 
{
  double     dv1[10],dv2[10],dv3[10],sum;
  int i;

  for(i=0;i<10;i++)
  {
    dv1[i]= i+1 ;
    dv2[i]= (i+1)*10.0 ;
  }

   sum=0.;
   for( i=0;i<10;i+=1){
        sum=sum+dv1[i];
   }
   printf(" ***** LOOP 1 ***** \n");
   printf("10.3f\n",sum);

  sum=10.;
  for( i=1;i<10;i+=1){
    dv3[i]=i;
    dv2[i]=dv2[i-1]*sum+dv3[i];
   }
   printf(" ***** LOOP 2 ***** \n");
   for(i=0;i<10;i++)printf("%10.3f  ",dv2[i]);
   printf("\n");
exit (0);
}

