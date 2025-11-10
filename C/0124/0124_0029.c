#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R1(i,j)   r1[i-1][j-1]
#define R2(i,j)   r2[i-1][j-1]
#define R3(i,j)   r3[i-1][j-1]
#define R4(i,j)   r4[i-1][j-1]
#define D1(i,j)   d1[i-1][j-1]
#define D2(i,j)   d2[i-1][j-1]
#define D3(i,j)   d3[i-1][j-1]
#define D4(i,j)   d4[i-1][j-1]
#define Q1(i,j)   q1[i-1][j-1]
#define Q2(i,j)   q2[i-1][j-1]
#define Q3(i,j)   q3[i-1][j-1]
#define Q4(i,j)   q4[i-1][j-1]
#define C1(i,j)   c1[i-1][j-1]
#define C2(i,j)   c2[i-1][j-1]
#define C3(i,j)   c3[i-1][j-1]
#define C4(i,j)   c4[i-1][j-1]
#define CD1(i,j)  cd1[i-1][j-1]
#define CD2(i,j)  cd2[i-1][j-1]
#define CD3(i,j)  cd3[i-1][j-1]
#define CD4(i,j)  cd4[i-1][j-1]
#define CQ1(i,j)  cq1[i-1][j-1]
#define CQ2(i,j)  cq2[i-1][j-1]
#define CQ3(i,j)  cq3[i-1][j-1]
#define CQ4(i,j)  cq4[i-1][j-1]
 float       r1[10][10],r2[10][10],r3[10][10],r4[10][10];
 double      d1[10][10],d2[10][10],d3[10][10],d4[10][10];
 long double q1[10][10],q2[10][10],q3[10][10],q4[10][10];
 COMPLEX8    c1[10][10],c2[10][10],c3[10][10],c4[10][10];
 COMPLEX16   cd1[10][10],cd2[10][10],cd3[10][10],cd4[10][10];
 COMPLEX32   cq1[10][10],cq2[10][10],cq3[10][10],cq4[10][10];
int main()
  {
   float       A5,A6,A1,A2,A3,A4;
   double      B5,B6,B1,B2,B3,B4;
   long double CC5,CC6,CC1,CC2,CC3,CC4;
   COMPLEX8    DD5,DD6,DD1,DD2,DD3,DD4;
   COMPLEX16   ED5,ED6,ED1,ED2,ED3,ED4;
   COMPLEX32   FD5,FD6,FD1,FD2,FD3,FD4;
   long int i,j,I,J;
   for(j=0;j< 10;j++){
      for(i=0;i< 10;i++){
         r1[i][j]=1.0;
         r2[i][j]=1.0;
         r3[i][j]=1.0;
         r4[i][j]=1.0;
         d1[i][j]=1.0;
         d2[i][j]=1.0;
         d3[i][j]=1.0;
         d4[i][j]=1.0;
         q1[i][j]=1.0;
         q2[i][j]=1.0;
         q3[i][j]=1.0;
         q4[i][j]=1.0;
         c1[i][j].real=1.0;
         c1[i][j].imag=1.0;
         c2[i][j].real=1.0;
         c2[i][j].imag=1.0;
         c3[i][j].real=1.0;
         c3[i][j].imag=1.0;
         c4[i][j].real=1.0;
         c4[i][j].imag=1.0;
         cd1[i][j].dreal=1.0;
         cd1[i][j].dimag=1.0;
         cd2[i][j].dreal=1.0;
         cd2[i][j].dimag=1.0;
         cd3[i][j].dreal=1.0;
         cd3[i][j].dimag=1.0;
         cd4[i][j].dreal=1.0;
         cd4[i][j].dimag=1.0;
         cq1[i][j].qreal=1.0;
         cq1[i][j].qimag=1.0;
         cq2[i][j].qreal=1.0;
         cq2[i][j].qimag=1.0;
         cq3[i][j].qreal=1.0;
         cq3[i][j].qimag=1.0;
         cq4[i][j].qreal=1.0;
         cq4[i][j].qimag=1.0;
      }
   }
   A5=0.;
   A6=0.;
   for(J=1;J<=10;J++)
   {
      A1=R1(1,J)*2.0;
      A2=R2(2,J)*2.0;
      A3=R3(3,J)*2.0;
      A4=R4(4,J)*2.0;
      A5=A1+A2+A3+A4;
      for(I=1;I<=10;I++)
      {
         A6=R1(1,I)+R2(2,I)+R3(3,I)+R4(4,I)+A1+A2+A3+A4+R1(1,J)*2.0;
      }
   }
   B5=0.;
   B6=0.;
   for(J=1;J<=10;J++)
   {
      B1=D1(1,J)*2.0;
      B2=D2(2,J)*2.0;
      B3=D3(3,J)*2.0;
      B4=D4(4,J)*2.0;
      B5=B1+B2+B3+B4;
      for(I=1;I<=10;I++)
      {
         B6=D1(1,I)+D2(2,I)+D3(3,J)+D4(4,I)+B1+B2+B3+B4+D1(1,J)*2.0;
      }
   }
   CC5=0.;
   CC6=0.;
   for(J=1;J<=10;J++)
   {
      CC1=Q1(1,J)*2.0;
      CC2=Q2(2,J)*2.0;
      CC3=Q3(3,J)*2.0;
      CC4=Q4(4,J)*2.0;
      CC5=CC1+CC2+CC3+CC4+CC6;
      for(I=1;I<=10;I++)
      {
         CC6=Q1(1,I)+Q2(2,I)+Q3(3,J)+Q4(4,I)+CC1+CC2+CC3+CC4;
      }
   }
   DD5.real=1.0;
   DD5.imag=1.0;
   DD6.real=1.0;
   DD6.imag=1.0;
   for(J=1;J<=10;J++)
   {
      DD1.real=C1(1,J).real*2.0-C1(1,J).imag*1.0;
      DD1.imag=C1(1,J).real*1.0+C1(1,J).imag*2.0;
      DD2.real=C2(2,J).real*2.0-C2(2,J).imag*1.0;
      DD2.imag=C2(2,J).real*1.0+C2(2,J).imag*2.0;
      DD3.real=C3(3,J).real*2.0-C3(3,J).imag*1.0;
      DD3.imag=C3(3,J).real*1.0+C3(3,J).imag*2.0;
      DD4.real=C4(4,J).real*2.0-C4(4,J).imag*1.0;
      DD4.imag=C4(4,J).real*1.0+C4(4,J).imag*2.0;
      DD5.real=DD1.real+DD2.real+DD3.real+DD4.real+DD6.real;
      DD5.imag=DD1.imag+DD2.imag+DD3.imag+DD4.imag+DD6.imag;
      for(I=1;I<=10;I++)
      {
         DD6.real=C1(1,I).real+C2(2,I).real+C3(3,J).real+C4(4,I).real+
                  DD1.real+DD2.real+DD3.real;
         DD6.imag=C1(1,I).imag+C2(2,I).imag+C3(3,J).imag+C4(4,I).imag+
                  DD1.imag+DD2.imag+DD3.imag;
      }
   }
   ED5.dreal=1.0;
   ED5.dimag=0.5;
   ED6.dreal=1.0;
   ED6.dimag=2.0;
   for(J=1;J<=10;J++)
   {
      ED1.dreal=CD1(1,J).dreal*2.0-CD1(1,J).dimag*1.0;
      ED1.dimag=CD1(1,J).dreal*1.0+CD1(1,J).dimag*2.0;
      ED2.dreal=CD2(2,J).dreal*2.0-CD2(2,J).dimag*1.0;
      ED2.dimag=CD2(2,J).dreal*1.0+CD2(2,J).dimag*2.0;
      ED3.dreal=CD3(3,J).dreal*2.0-CD3(3,J).dimag*1.0;
      ED3.dimag=CD3(3,J).dreal*1.0+CD3(3,J).dimag*2.0;
      ED4.dreal=CD4(4,J).dreal*2.0-CD4(4,J).dimag*1.0;
      ED4.dimag=CD4(4,J).dreal*1.0+CD4(4,J).dimag*2.0;
      ED5.dreal=ED1.dreal+ED2.dreal+ED3.dreal+ED4.dreal+ED6.dreal;
      ED5.dimag=ED1.dimag+ED2.dimag+ED3.dimag+ED4.dimag+ED6.dimag;
      for(I=1;I<=10;I++)
      {
         ED6.dreal=CD1(1,I).dreal+CD2(2,I).dreal+CD3(3,J).dreal+CD4(4,I).dreal+
                   ED1.dreal+ED2.dreal+ED3.dreal;
         ED6.dimag=CD1(1,I).dimag+CD2(2,I).dimag+CD3(3,J).dimag+CD4(4,I).dimag+
                   ED1.dimag+ED2.dimag+ED3.dimag;
      }
   }
   FD5.qreal=0.0;
   FD5.qimag=0.0;
   FD6.qreal=0.0;
   FD6.qimag=0.0;
   for(J=1;J<=10;J++)
   {
      FD1.qreal=CQ1(1,J).qreal*2.0-CQ1(1,J).qimag*1.0;
      FD1.qimag=CQ1(1,J).qreal*1.0+CQ1(1,J).qimag*2.0;
      FD2.qreal=CQ2(2,J).qreal*2.0-CQ2(2,J).qimag*1.0;
      FD2.qimag=CQ2(2,J).qreal*1.0+CQ2(2,J).qimag*2.0;
      FD3.qreal=CQ3(3,J).qreal*2.0-CQ3(3,J).qimag*1.0;
      FD3.qimag=CQ3(3,J).qreal*1.0+CQ3(3,J).qimag*2.0;
      FD4.qreal=CQ4(4,J).qreal*2.0-CQ4(4,J).qimag*1.0;
      FD4.qimag=CQ4(4,J).qreal*1.0+CQ4(4,J).qimag*2.0;
      FD5.qreal=FD1.qreal+FD2.qreal+FD3.qreal+FD4.qreal+FD6.qreal;
      FD5.qimag=FD1.qimag+FD2.qimag+FD3.qimag+FD4.qimag+FD6.qimag;
      for(I=1;I<=10;I++)
      {
         FD6.qreal=CQ1(1,I).qreal+CQ2(2,I).qreal+CQ3(3,J).qreal+CQ4(4,I).qreal+
                   FD1.qreal+FD2.qreal+FD3.qreal;
         FD6.qimag=CQ1(1,I).qimag+CQ2(2,I).qimag+CQ3(3,J).qimag+CQ4(4,I).qimag+
                   FD1.qimag+FD2.qimag+FD3.qimag;
      }
   }
   printf(" *** PATTERN2000 ***\n");
   printf(" %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g  \n",
            A5,A6,B5,B6,(double)CC5,(double)CC6,DD5.real,DD5.imag,DD6.real,DD6.imag,
                                ED5.dreal,ED5.dimag,ED6.dreal,ED6.dimag,
                                (double)FD5.qreal,(double)FD5.qimag,(double)FD6.qreal,(double)FD6.qimag);
exit (0);
 }
