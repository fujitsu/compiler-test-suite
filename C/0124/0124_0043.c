#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int TEST4 (void);
int TEST3 (void);
int TEST2 (void);
int TEST1 (void);
int 
main (void)
  {
     printf(" ** PATTERN5000 **\n");
     printf(" ** PATTERN5000 TEST1 **\n");
      TEST1();
     printf(" ** PATTERN5000 TEST2 **\n");
      TEST2();
     printf(" ** PATTERN5000 TEST3 **\n");
      TEST3();
     printf(" ** PATTERN5000 TEST4 **\n");
      TEST4();
     printf(" TEST OK\n");
exit (0);
  }
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
  int 
TEST1 (void)
  {
   double a[10],b[10];
   static double c[2000],d[2000],e[2048];
   long int N=2,i,j,I,J;
   for(i=0;i< 10;i++){
     a[i]=1;
   }
   for(i=0;i< 10;i++){
     b[i]=1;
   }
   for(I=1;I<=2000;I++)
   {
      C(I)=1;
 LBL_1:; 
      D(I)=1;
   }
   for(I=1;I<=10;I++)
   {
 LBL_2:; 
      A(I)=B(I)+I;
   }
   for(I=1;I<=N;I++)
   {
 LBL_3:; 
      A(I)=1;
   }
   for(I=1;I<=2048;I++)
   {
 LBL_4:; 
      E(I)=B(1);
   }
   for(J=2;J<=5;J++)
   {
     for(I=2;I<=2048;I++)
     {
 LBL_5:; 
       E(1)=E(1)+E(I)+B(1);
     }
   }
   for(J=2;J<=5;J++)
   {
     for(I=1;I<=10;I++)
     {
 LBL_6:; 
       A(I)=A(I)+B(I);
     }
   }
   for(I=1;I<=10;I++)
   {
      E(2)=E(2)+A(I);
 LBL_7:; 
      E(3)=E(3)+B(I);
   }
   for(I=1;I<=2000;I++)
   {
      E(4)=E(4)+C(I);
 LBL_8:; 
      E(5)=E(5)+D(I);
   }
   printf(" %g %g %g %g %g \n",E(1),E(2),E(3),E(4),E(5));
   return 0;
  }
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D2(i,j) d[i-1][j-1]
  int 
TEST2 (void)
  {
   float a[10],b[10],c[10],d[10][10];
   long int N=2;
   long int K,I,i,J,L,j;
   for(i=0;i< 10;i++){
     a[i]=1;
   }
   for(i=0;i< 10;i++){
     b[i]=1;
   }
   for(i=0;i< 10;i++){
     c[i]=1;
   }
   for(j=0;j< 10;j++){
      for(i=0;i< 10;i++){
        d[i][j]=0;
      }
   }
   for(L=1;L<=4;L++)
   {
      goto LBL_90;
      N=1;
 LBL_1:; 
      K=L;
      if (L==1)  goto LBL_2;
      if (L==2)  goto LBL_3;
      if (L==3)  goto LBL_4;
      if (L==4)  goto LBL_5;
      for(I=1;I<=10;I++)
      {
 LBL_100:;
         A(I)=1;
      }
      A(1)=B(1)+1;
 LBL_2:; 
      for(I=1;I<=10;I+=2)
      {
         B(I)=1+I;
 LBL_200:;
         if (I >  6)goto LBL_3         ;
      }
      B(2)=1;
 LBL_3:; 
      if (C(1) <= 0)goto LBL_4         ;
      for(J=I;J<=10;J++)
      {
        for(I=1;I<=10;I++)
        {
 LBL_300:;
          D2(I,J)=C(I)+K;
        }
        if (K >  2)K=L-1;
 LBL_301:;
      }
      goto LBL_4;
 LBL_99:;
      return 0;
 LBL_4:; 
      for(I=1;I<=10;I+=3)
      {
         C(I)=I;
 LBL_400:;
      }
      if (L >  100)goto LBL_99         ;
      goto LBL_10;
 LBL_90:;
      goto LBL_1;
 LBL_10:;
   }
 LBL_5:; 
   for(i=1;i<=10;i++){
     printf(" %g %g %g \n",A(i),B(i),C(i));
   }
   for(j=1;j<=10;j++){
     for(i=1;i<=10;i++){
       printf(" %g \n",D2(i,j));
     }
   }
   return 0;
  }
#define A(i) a[i-1]
#define B(i) b[i-1]
#define B1(i) b1[i-1]
#define C(i) c[i-1]
#define E(i) e[i-1]
#define D(i) d[i-1]
  int 
TEST3 (void)
  {
   float a[10],b[10],b1[10];
   float A1,A2,A3,A4,A5;
   float c[10];
   float C1,C2,C3,C4,C5;
   float e[10];
   float d[100];
   long int i,I;
   for(i=0;i< 10;i++){
     a[i]=8;
   }
   for(i=0;i< 10;i++){
     b[i]=10;
   }
   for(i=0;i< 10;i++){
     c[i]=0.5;
   }
   for(i=0;i< 10;i++){
     e[i]=1;
   }
   for(i=0;i<100;i++){
     d[i]=0;
   }
   for(I=11;I<=90;I++)
   {
 LBL_1:; 
      D(I)=I;
   }
   A1=2.0;
   for(I=1;I<=10;I++)
   {
 LBL_10:;
      A(I)=I;
   }
   C1=2.0;
   C1=2.0;
   A2=1.0;
   for(I=1;I<=10;I++)
   {
 LBL_20:;
      B(I)=I;
   }
   A3=1; 
   B1(2)=1;
   E(1)=0.6;
   for(I=1;I<=6;I++)
   {
 LBL_30:;
      D(I)=9;
   }
   B(10)=7;
   if (E(1) == 9) E(2)=1;
   for(I=1;I<=5;I++)
   {
 LBL_40:;
      C(I)=I;
   }
   B(8)=0;
   A(5)=0;
   D(1)=0;
   for(i=1;i<=10;i++){
     printf(" %g %g %g %g \n",A(i),B(i),C(i),E(i));
   }
   for(i=1;i<=100;i++){
     printf(" %g \n",D(i));
   }
   return 0;
  }
#define A(i) a[i-1]
#define C(i) c[i-1]
#define B(i) b[i-1]
  int 
TEST4 (void)
  {
   static double a[10],c[10],b[1500];
   long int I,i;
   for(i=0;i< 1500;i++){
     b[i]=7;
   }
   C(1)=1;
   C(2)=2;
   C(3)=3;
   C(4)=4;
   C(5)=5;
   C(6)=6;
   C(7)=7;
   C(8)=8;
   for(I=1;I<=1000;I++)
   {
      B(I)=I;
      if (I <= 10)
      {
         A(I)=I+B(I+500);
      }
 LBL_10:;
   }
   C(9)=9;
   C(10)=10;
   printf(" %g %g \n",B(1),B(1500));
   for(i=1;i<=10;i++){
     printf(" %g %g \n",A(i),C(i));
   }
  return 0;
  }
#define A(i) a[i-1]
#define B(i) b[i-1]
#define B1(i) b1[i-1]
#define C(i) c[i-1]
#define E(i) e[i-1]
#define D(i) d[i-1]
  int 
TEST5 (void)
  {
   float a[10],b[10],b1[10];
   float A1,A2,A3,A4,A5;
   float c[10];
   float C1,C2,C3,C4,C5;
   float e[10];
   float d[100];
   float B5=1.0;
   long int i,I;
   for(i=0;i< 10;i++){
     a[i]=8;
   }
   for(i=0;i< 10;i++){
     b[i]=10;
   }
   for(i=0;i< 10;i++){
     c[i]=0.5;
   }
   for(i=0;i< 10;i++){
     e[i]=1;
   }
   for(I=11;I<=90;I++)
   {
 LBL_1:; 
      D(I)=I;
   }
   A1=2.0;
   for(I=1;I<=10;I++)
   {
 LBL_10:;
      A(I)=D(20);
   }
   C1=2.0;
   C1=2.0;
   A2=1.0;
   if (A3 >  5000)goto LBL_101         ;
   for(I=1;I<=5;I++)
   {
 LBL_20:;
      B(I)=B5;
   }
   A3=1; 
   B1(2)=1;
 LBL_101:;
   E(1)=0.6;
   for(I=1;I<=6;I++)
   {
 LBL_30:;
      D(I)=A(1)+B(1);
   }
   B(10)=7;
   if (A(1) == 9) C(2)=1;
   for(I=1;I<=5;I++)
   {
 LBL_40:;
      C(I)=I;
   }
   B(8)=0;
   C(5)=0;
   D(1)=0;
   for(i=1;i<=10;i++){
     printf(" %g %g %g %g \n",A(i),B(i),C(i),E(i));
   }
   for(i=1;i<=100;i++){
     printf(" %g \n",D(i));
   }
   return 0;
  }
