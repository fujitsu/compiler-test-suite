#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int int2(float a[10]);
int int1(float a[10]);
COMPLEX8 CSQRT(COMPLEX8 comp);
int main() 
{

  int i;
  float      dv1[10],dv2[10];
  COMPLEX8   cv1[10],cv2[10];

      for( i=0;i<10;i+=1){
       dv1[i]=sin(i/3.14);
       dv2[i]=cos(dv1[i]/3.14);
       }

   printf(" ***** LOOP1 ***** \n");
   for(i=0;i<10;i++) printf("%10.3f",dv1[i]); printf("\n");
   for(i=0;i<10;i++) printf("%10.3f",dv2[i]); printf("\n");

      int1(dv1);
      int2(dv2);
      cv1[0].real=0.0;
      cv1[0].imag=0.0;
      cv2[0].real=0.0;
      cv2[0].imag=0.0;

      for( i=1;i<10;i+=1){
       cv1[i].real=dv1[i];
       cv1[i].imag=dv2[i];
       dv1[i-1]=dv2[i];
       cv2[i]=CSQRT(cv1[i]);
      }

 printf(" ****** loop 2 ******* \n");
 for(i=0;i<10;i++)printf("(%9.2e , %9.2e)  ",cv1[i].real,cv1[i].imag);
 printf("\n");
 for(i=0;i<10;i++)printf("(%9.2e , %9.2e)  ",cv2[i].real,cv2[i].imag);
 printf("\n");

exit (0);
}

int int1(float a[10])
{
  int i;
  for( i=0;i<10;i+=1){
     a[i]=i;
  }

  return 0;
}

int int2(float a[10])
{
  int i;
  for( i=0;i<10;i+=1){
    a[i]=i*10;
  }

  return 0;
}

COMPLEX8 CSQRT(COMPLEX8 comp)
{
  COMPLEX8 retval;
  retval.real = sqrt(comp.real);
  retval.imag = sqrt(comp.imag);
  return(retval);
}
