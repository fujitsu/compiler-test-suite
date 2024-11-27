#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 
 
 
 
 
 
#include <string.h>
int suba (int n);
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
#define I1A(i,j) i1a[i][j]
#define I1B(i,j) i1b[i][j]
#define I1C(i,j) i1c[i][j]
#define I1D(i,j) i1d[i][j]
#define I2A(i,j,k) i2a[i][j][k]
#define I2B(i,j,k) i2b[i][j][k]
#define I2C(i,j,k) i2c[i][j][k]
#define I2D(i,j,k) i2d[i][j][k]
#define R1A(i,j) r1a[i][j]
#define R1B(i,j) r1b[i][j]
#define R1C(i,j) r1c[i][j]
#define R1D(i,j) r1d[i][j]
#define R2A(i,j,k) r2a[i][j][k]
#define R2B(i,j,k) r2b[i][j][k]
#define R2C(i,j,k) r2c[i][j][k]
#define R2D(i,j,k) r2d[i][j][k]
  long int i1a[10][10],i1b[10][10],i1c[10][10];
  long int i1d[10][10];
  long int i2a[10][10][10],i2b[10][10][10],i2c[10][10][10];
  long int i2d[10][10][10];
  double   r1a[10][10],r1b[10][10],r1c[10][10];
  double   r1d[10][10];
  double   r2a[10][10][10],r2b[10][10][10],r2c[10][10][10];
  double   r2d[10][10][10];
int 
main (void)
  {
    int I,i;
    int J,j;
    int K,k;
    int n;
   printf(" ***  ***\n");
   for(I=0;I<10;I++)
   {
    for(J=0;J<10;J++)
    {
      I1A(I,J)=1;
      I1B(I,J)=1;
      I1C(I,J)=1;
      I1D(I,J)=1;
      R1A(I,J)=1.0;
      R1B(I,J)=1.0;
      R1C(I,J)=1.0;
      R1D(I,J)=1.0;
    }
   }
   for(I=0;I<10;I++)
   {
    for(J=0;J<10;J++)
    {
     for(K=0;K<10;K++)
     {
      I2A(I,J,K)=2;
      I2B(I,J,K)=2;
      I2C(I,J,K)=2;
      I2D(I,J,K)=2;
      R2A(I,J,K)=2.0;
      R2B(I,J,K)=2.0;
      R2C(I,J,K)=2.0;
      R2D(I,J,K)=2.0;
     }
    }
   }
   n=10;
   suba(n);
 
   for(i=0;i<10;i++)
   {
    for(j=0;j<10;j++)
    {
     printf(" %ld %ld %ld %ld \n",I1A(i,j),I1B(i,j),I1C(i,j),I1D(i,j));
     printf(" %8.2f %8.2f ",R1A(i,j),R1B(i,j));
     printf(" %8.2f %8.2f \n",R1C(i,j),R1D(i,j));
     for(k=0;k<10;k++)
     {
     printf(" %ld %ld %ld   ",I2A(i,j,k),I2B(i,j,k),I2C(i,j,k));
     printf(" %8.2f %8.2f %8.2f ",R2A(i,j,k),R2B(i,j,k),R2C(i,j,k));
     }
    }
   }
   printf("\n");
exit (0);
  }

 int 
suba (int n)
  {
   int    I,i;
   int    J,j;
   long int    K,k;
   for (I=0;I<n;I++)
   {
    for (J=0;J<n;J++)
    {
     I1A(I,J) = I1A(I,J) + I2A(I,J,1);
     I1B(I,J) = I1B(I,J) + I2B(I,J,2);
    }
   }
   for (I=0;I<n;I+=2)
   {
    for (J=0;J<n;J+=2)
    {
     I1C(I,J) = I1C(I,J) * I2C(I,J,1);
     I1D(I,J) = I1D(I,J) * I2D(I,J,2);
    }
   }
   for (I=0;I<n;I++)
   {
    for (J=0;J<n;J++)
    {
     R2A(1,I,J) = R1A(I,J) * R2A(I,J,1);
     R2B(2,I,J) = R1B(I,3) * R2B(I,J,2);
    }
   }
   for (I=0;I<n;I+=2)
   {
    for (J=0;J<n;J+=2)
    {
     R2C(1,I,J) = R1C(I,5) + R2C(I,J,1);
     R2D(2,I,J) = R1D(I,J) + R2D(I,J,2);
    }
   }
   K=2;
   for (I=0;I<n;I+=2)
   {
    for (J=0;J<n;J+=2)
    {
     R2C(1,I,J) = fmod(I1C(I,5),K) + R2C(I,J,1);
    }
   }
  }
