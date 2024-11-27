#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main() 
{
      double     dv1[10],dv2[10],dv3[10];
      long int    ias,i,j,m;

   for(i=0;i<10;i++)
   {
     dv1[i]=(i+1)*10.0;
     dv2[i]=i+1;
     dv3[i]=1.0;
   }

      ias=1;
      for(i=1;i<9;i+=1)
      {
        dv1[i]=dv2[i]*dv2[i];
        dv3[i]=dv1[i-1];
        if(dv1[i]>dv2[i]*4.0) goto L110 ;
          dv3[i+1]=dv1[i];
          goto L100;
L110:
        if(dv1[i]>dv2[i]*8)  dv1[i-1]=dv3[i]/4.0 ;
L100: ;
      }
      printf(" ***** LOOP 1 ***** \n");
      for(i=0;i<10;i++) printf(" %10.3f ",dv1[i]); printf("\n");
      for(i=0;i<10;i++) printf(" %10.3f ",dv2[i]); printf("\n");
      for(i=0;i<10;i++) printf(" %10.3f ",dv3[i]); printf("\n");

      j=dv2[i-1]-1;
      m=dv2[i-3];
      for( i=4 ;i>=0;i+=-1)
      {
        dv1[j]=dv2[i*2];
        dv1[m]=dv3[i];
        dv1[i]=dv1[j]+dv1[m];
      }
      printf(" ***** LOOP 2 ***** \n");
      for(i=0;i<10;i++) printf("%10.3f ",dv1[i]);
      printf("\n");
exit (0);
}

