#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <string.h>
int sub1 (float *a);
int int2 (float a[10]);
int int1 (float a[10]);
typedef struct{
               float real,imag;
              }COMPLEX;
typedef struct{
               float real,imag;
              }COMPLEX8;
typedef struct{
               double dreal,dimag;
              }COMPLEX16;
typedef struct{
               long double qreal,qimag;
              }COMPLEX32;


COMPLEX8 CSQRT();


float com1;
int 
main (void) 
{

  struct st1 {
    float     dv1[10],dv2[10];
    COMPLEX8  cv1[10],cv2[10];
  } t;
  struct st1 *pt = &t;
  int i ;
  union EQU { float equ1;
             float equ2; } uni;

      pt->cv1[0].real=0.0;
      pt->cv1[0].imag=0.0;

      for( i=0;i<10;i+=1){
      int1(pt->dv1);
      int2(pt->dv2);
       pt->cv1[i].real=pt->dv1[i];
       pt->cv1[i].imag=pt->dv2[i];
       pt->dv1[i]=pt->dv2[i];
       pt->cv2[i]=CSQRT(pt->cv1[i]);
   }

  printf("***** LOOP1 ***** \n");
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",pt->cv1[i].real,pt->cv1[i].imag);
  printf("\n");
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",pt->cv2[i].real,pt->cv2[i].imag);
  printf("\n");

  printf("***** LOOP2 ***** \n");
    for( i=0;i<10;i+=1){
       pt->cv1[i].real=pt->dv1[i];
       pt->cv1[i].imag=pt->dv2[i];
       pt->cv2[i]=CSQRT(pt->cv1[i]);
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",pt->cv1[i].real,pt->cv1[i].imag);
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",pt->cv2[i].real,pt->cv2[i].imag);
     }

  printf("\n***** LOOP3 ***** \n");
      for( i=0;i<10;i+=1){
       pt->dv1[i]=1.;
       pt->dv2[i]=2.;
       pt->cv1[i].real=pt->dv1[i];
       pt->cv1[i].imag=pt->dv2[i];
  for(i=0;i<10;i++)printf("(%9.2e,%9.2e)  ",pt->cv1[i].real,pt->cv1[i].imag);
      }

      for( i=0;i<10;i+=1){
       uni.equ1=i;
       sub1(&uni.equ1);
       pt->dv1[i]=uni.equ2;
      }

  printf("\n***** LOOP4 ***** \n");
  for(i=0;i<10;i++) printf("%10.3f ",pt->dv1[i]); printf("\n");

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

COMPLEX8 
CSQRT (COMPLEX8 comp)
{
  COMPLEX8 retval;
  retval.real = sqrt(comp.real);
  retval.imag = sqrt(comp.imag);
  return(retval);
}

