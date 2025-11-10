#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub (long int kx);
#define  A(i)  a[i-1]
#define  B(i)  b[i-1]
#define  C(i)  c[i-1]
#define  D(i)  d[i-1]
#define  AX(i)  ax[i-1]
#define  BX(i)  bx[i-1]
#define  CX(i)  cx[i-1]

long int a[256],b[256],c[256],d[256];
double   x[256];
COMPLEX8 ax[256],bx[256],cx[256];
int 
main (void)
 {
   int i,n=8,j=0,s=0;
   long int k=512;
   for(i=0;i<8*n*4;i++){
     a[i] = 1 ;
     b[i] = 2 ;
     c[i] = 1 ;
     d[i] = i+1-j ;
     j++;
    }
   for(i=0;i<n*32;i=i+1){
     a[i] = b[i] + c[i] ;
     c[i] = a[i] * d[i] ;
    }
   for(i=0;i<256;i++){
     printf(" c[%d] => %ld \n",i,c[i]) ;
    }
   for(i=0;i<255;i=i+1){
     a[i] = c[i] + b[i] ;
     b[i+1] = a[i] * d[i] ;
    }
   for(i=0;i<255;i++){
     printf(" b[%d] => %ld \n",i,b[i+1]) ;
    }
   x[i] = (double)(d[i]);
   for(i=0;i<256;i=i+1){
     a[i] = b[i] + c[i] ;
     x[i] = a[i] * 0.5 ;
    }
   for(i=0;i<256;i++){
     printf(" x[%d] => %g \n",i,x[i]) ;
    }
   for(i=0;i<256;i++){
     a[i] = 2 ;
    }
   for(i=0;i<255;i++){
     if(b[i+1] % 2 == 0){
       c[i] = b[i+1];
       if(c[i] != 3){
        printf(" c[%d] => %ld \n",i,c[i]) ;
       }
      }
     else{
       a[i] = b[i+1];
      }
   }
   for(i=0;i<256;i++){
     if(a[i] != 2){
      printf(" a[%d] => %ld \n",i,a[i]) ;
     }
    }
   sub(k);
exit (0);
 }
 int 
sub (long int kx)
 {
 int j;
 for(j=0;j<256;j++){
   ax[j].real = 1.0 ;
   ax[j].imag = 2.0 ;
   bx[j].real = 3.0 ;
   bx[j].imag = -1.0 ;
   cx[j].real = 2.0 ;
   cx[j].imag = 3.0 ;
  }
  for(j=0;j<kx/2;j++){
    ax[j].real=bx[j].real*cx[j].real-bx[j].imag*cx[j].imag;
    ax[j].imag=bx[j].real*cx[j].imag+bx[j].imag*cx[j].real;
   }
  for(j=0;j<256;j++){
    printf(" ax[%d].real = %g , ax[%d].imag = %g \n",
                                    j,ax[j].real,j,ax[j].imag);
   }
  for(j=0;j<kx/2;j++){
    ax[j].real=bx[j].real+sqrt(cx[j].real);
    ax[j].imag=bx[j].imag+sqrt(cx[j].imag);
   }
  for(j=0;j<256;j++){
    printf(" ax[%d].real = %g , ax[%d].imag = %g \n",
                                    j,ax[j].real,j,ax[j].imag);
   }
 }
