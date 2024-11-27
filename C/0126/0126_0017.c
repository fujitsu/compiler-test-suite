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
#define IS      is
#define RA(i,j) ra[i][j]
#define RB(i,j) rb[i][j]
#define RC(i,j) rc[i][j]
#define RD(i,j) rd[i][j]
#define RS      rs
  long int ia[10][10],ib[10][10],ic[10][10];
  long int id[10][10];
  long int is;
  double   ra[10][10],rb[10][10],rc[10][10];
  double   rd[10][10];
  double   rs;
int main()
  {
    int I,i;
    int J,j;
    int n;

   printf(" ***  ***\n");

   IS = 3;
   RS = 3.0;

   for(I=0;I<10;I++)
   {
    for(J=0;J<10;J++)
    {
      IA(I,J)=7;
      IB(I,J)=9;
      IC(I,J)=1;
      ID(I,J)=5;
      RA(I,J)=2.0;
      RB(I,J)=7.0;
      RC(I,J)=3.0;
      RD(I,J)=8.0;
    }
   }
   n=10;
   for (I=0;I<n;I++)
   {
    for (J=0;J<n;J++)
    {
     IA(I,J) = IB(I,J) + IC(I,J) + ID(I,J);
     RA(I,J) = RB(I,J) * RC(I,J) / RD(I,J);
    }
   }
   for (I=0;I+3<n;I+=4)
   {
    for (J=0;J+3<n;J+=4)
    {
     ID(I,J  ) = IA(I,J  ) * IB(I,J  ) + IC(I,J  );
     ID(I,J+1) = IA(I,J+1) * IB(I,J+1) + IC(I,J+1);
     ID(I,J+2) = IA(I,J+2) * IB(I,J+2) - IC(I,J+2);
     ID(I,J+3) = IA(I,J+3) * IB(I,J+3) - IC(I,J+3);
    }
   }
   for (I=0;I+3<n;I+=4)
   {
    for (J=0;J+3<n;J+=4)
    {
     RD(I,J  ) = RA(I,J  ) * RB(I,J  ) + RS;
     RD(I,J+1) = RA(I,J+1) * RB(I,J+1) + RS;
     RD(I,J+2) = RA(I,J+2) * RB(I,J+2) - RS;
     RD(I,J+3) = RA(I,J+3) * RB(I,J+3) - RS;
    }
   }
   IS = IA(0,0);
   RS = RA(0,0);
   for (I=0;I<n;I++)
   {
    for (J=0;J<n;J++)
    {
     IA(I,J) = IS + IA(I,J);
     RA(I,J) = RS + RA(I,J);
    }
   }
   for (I=0;I<n;I+=2)
   {
    for (J=0;J<n;J+=2)
    {
     RD(I,J) = RC(I,J) * RC(I,J) - RB(I,J) * RB(I,J);
     ID(I,J) = IC(I,J) * IC(I,J) + IB(I,J) * IB(I,J);
     RB(I,J) = (RC(I,J) * RS)/RD(I,J) + ID(1,J) * IS;
    }
   }
   for(i=0;i<10;i++)
   {
    for(j=0;j<10;j++)
    {
     printf(" %ld %ld %ld %ld \n",IA(i,j),IB(i,j),IC(i,j),ID(i,j));
     printf(" %8.2f %8.2f ",RA(i,j),RB(i,j));
     printf(" %8.2f %8.2f \n",RC(i,j),RD(i,j));
    }
   }
exit (0);
   }
