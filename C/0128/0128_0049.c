#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
COMPLEX8 CSQRT();
int sub1 (float *a);
int int2 (float a[10]);
int int1 (float a[10]);

float com1;
int 
main (void) 
{

 int i ;
 float     dv1[10],dv2[10];
 COMPLEX8  cv1[10],cv2[10];
 union EQU { float equ1;
             float equ2; } uni;

      cv1[0].real=0.0;
      cv1[0].imag=0.0;

      for( i=0;i<10;i+=1){
      int1(dv1);
      int2(dv2);
       cv1[i].real=dv1[i];
       cv1[i].imag=dv2[i];
       dv1[i]=dv2[i];
       cv2[i]=CSQRT(cv1[i]);
   }

  printf("***** LOOP1 ***** \n");
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",cv1[i].real,cv1[i].imag);
  printf("\n");
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",cv2[i].real,cv2[i].imag);
  printf("\n");

  printf("***** LOOP2 ***** \n");
    for( i=0;i<10;i+=1){
       cv1[i].real=dv1[i];
       cv1[i].imag=dv2[i];
       cv2[i]=CSQRT(cv1[i]);
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",cv1[i].real,cv1[i].imag);
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",cv2[i].real,cv2[i].imag);
     }

  printf("\n***** LOOP3 ***** \n");
      for( i=0;i<10;i+=1){
       dv1[i]=1.;
       dv2[i]=2.;
       cv1[i].real=dv1[i];
       cv1[i].imag=dv2[i];
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",cv1[i].real,cv1[i].imag);
      }

      for( i=0;i<10;i+=1){
       uni.equ1=i;
       sub1(&uni.equ1);
       dv1[i]=uni.equ2;
      }

  printf("\n***** LOOP4 ***** \n");
  for(i=0;i<10;i++) printf("%10.3f ",dv1[i]); printf("\n");

exit (0);
}

int 
int1 (float a[10])
 {
  int i;
  for( i=0;i<10;i+=1){
       a[i]=i;
   }
 }

int 
int2 (float a[10])
 {
  int i;
  for( i=0;i<10;i+=1){
   a[i]=i*10;
  }
 }

 int 
sub1 (float *a)
 {
  *a=sin(*a);
 }

COMPLEX8 CSQRT(comp)
COMPLEX8 comp;
{
  COMPLEX8 retval;
  retval.real = sqrt(comp.real);
  retval.imag = sqrt(comp.imag);
  return(retval);
}
