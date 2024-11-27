#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 
 
 
#include <string.h>
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
#define IA(i,j) ia[i][j]
#define IB(i,j) ib[i][j]
#define IC(i,j) ic[i][j]
#define ID(i,j) id[i][j]
#define IE(i,j) ie[i][j]
#define IG(i,j) ig[i][j]
#define IH(i,j) ih[i][j]
#define RA(i,j) ra[i][j]
  long int ia[10][10],ib[10][10],ic[10][10],id[10][10];
  unsigned int ie[10][10],ig[10][10],ih[10][10];
  double   ra[10][10];
int main()
  {
    int I,i;
    int J,j;
    int n;

   printf(" ***  ***\n");

   for(I=0;I<10;I++)
   {
    for(J=0;J<10;J++)
    {
      IA(I,J)=7;
      IB(I,J)=3;
      IC(I,J)=I%2;
      ID(I,J)=5;
      IE(I,J)=627;
      IG(I,J)=841;
      IH(I,J)=250;
      RA(I,J)=2.123;
    }
   }
   n=10;
   for (I=0;I<n;I++)
   {
    for (J=0;J<n;J++)
    {
     IA(I,J) += IB(I,J);
     IC(I,J) = (int)(RA(I,J)*10.0);
    }
   }
   for (I=0;I<n;I+=1)
   {
    for (J=0;J<n;J+=1)
    {
     ID(I,J) = IA(I,J) * IB(I,J) == IC(I,J);
     IE(I,J) = IG(I,J)&IH(I,J)>>4;
     IG(I,J) ^= IH(I,J);
     IH(I,J) |= IE(I,J);
    }
   }
   for (I=0;I<n;I++)
   {
    for (J=0;J<n;J++)
    {
     IA(I,J) =  IA(I,J)<<2;
    }
   }
   for(i=0;i<10;i++)
   {
    for(j=0;j<10;j++)
    {
     printf(" %ld %ld %ld %ld ",IA(i,j),IB(i,j),IC(i,j),ID(i,j));
     printf(" %ld %ld %ld \n",IE(i,j),IG(i,j),IH(i,j));
    }
   }
exit (0);
   }
