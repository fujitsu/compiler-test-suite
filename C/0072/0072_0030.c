#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <string.h>
int int2(float a[10]);
int int1(float a[10]);
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

int main() 
{

  int i;
  struct st1 {
    float      dv1[10],dv2[10];
    COMPLEX8   cv1[10],cv2[10];
  } t;
  struct st1 *pt = &t;

      for( i=0;i<10;i+=1){
       pt->dv1[i]=sin(i/3.14);
       pt->dv2[i]=cos(pt->dv1[i]/3.14);
       }

   printf(" ***** LOOP1 ***** \n");
   for(i=0;i<10;i++) printf("%10.3f",pt->dv1[i]); printf("\n");
   for(i=0;i<10;i++) printf("%10.3f",pt->dv2[i]); printf("\n");

      int1(pt->dv1);
      int2(pt->dv2);
      pt->cv1[0].real=0.0;
      pt->cv1[0].imag=0.0;
      pt->cv2[0].real=0.0;
      pt->cv2[0].imag=0.0;

      for( i=1;i<10;i+=1){
       pt->cv1[i].real=pt->dv1[i];
       pt->cv1[i].imag=pt->dv2[i];
       pt->dv1[i-1]=pt->dv2[i];
       pt->cv2[i]=CSQRT(pt->cv1[i]);
      }

 printf(" ****** loop 2 ******* \n");
 for(i=0;i<10;i++)printf("(%9.2e , %9.2e)  ",pt->cv1[i].real,pt->cv1[i].imag);
 printf("\n");
 for(i=0;i<10;i++)printf("(%9.2e , %9.2e)  ",pt->cv2[i].real,pt->cv2[i].imag);
 printf("\n");

exit (0);
}

int int1(a)
 float a[10];
{
  int i;
  for( i=0;i<10;i+=1){
     a[i]=i;
  }
}


int int2(a)
 float a[10];
{
  int i;
  for( i=0;i<10;i+=1){
    a[i]=i*10;
  }
}

COMPLEX8 CSQRT(comp)
COMPLEX8 comp;
{
  COMPLEX8 retval;
  retval.real = sqrt(comp.real);
  retval.imag = sqrt(comp.imag);
  return(retval);
}
