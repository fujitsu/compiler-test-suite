#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main() 
{
  struct st1 {
    double     dv1[10],dv2[10],dv3[10];
  } t;
  struct st1 *pt = &t;
  long int    ias,i,j,m;

   for(i=0;i<10;i++)
   {
     pt->dv1[i]=(i+1)*10.0;
     pt->dv2[i]=i+1;
     pt->dv3[i]=1.0;
   }

      ias=1;
      for(i=1;i<9;i+=1)
      {
        pt->dv1[i]=pt->dv2[i]*pt->dv2[i];
        pt->dv3[i]=pt->dv1[i-1];
        if(pt->dv1[i]>pt->dv2[i]*4.0) goto L110 ;
          pt->dv3[i+1]=pt->dv1[i];
          goto L100;
L110:
        if(pt->dv1[i]>pt->dv2[i]*8)  pt->dv1[i-1]=pt->dv3[i]/4.0 ;
L100: ;
      }
      printf(" ***** LOOP 1 ***** \n");
      for(i=0;i<10;i++) printf(" %10.3f ",pt->dv1[i]); printf("\n");
      for(i=0;i<10;i++) printf(" %10.3f ",pt->dv2[i]); printf("\n");
      for(i=0;i<10;i++) printf(" %10.3f ",pt->dv3[i]); printf("\n");

      j=pt->dv2[i-1]-1;
      m=pt->dv2[i-3];
      for( i=4 ;i>=0;i+=-1)
      {
        pt->dv1[j]=pt->dv2[i*2];
        pt->dv1[m]=pt->dv3[i];
        pt->dv1[i]=pt->dv1[j]+pt->dv1[m];
      }
      printf(" ***** LOOP 2 ***** \n");
      for(i=0;i<10;i++) printf("%10.3f ",pt->dv1[i]);
      printf("\n");
exit (0);
}

