#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define V11(i) v11[i-1]
#define V31(i,j,k) v31[i-1][j-1][k-1]
#define A(i) a[i-1]
#define V41(i,j,k,l) v41[i-1][j-1][k-1][l-1]
#define V21(i,j) v21[i-1][j-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
#define F(i) f[i-1]
 double v41[2][2][2][2]={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                         0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,};
int main()
  {
   long int v11[4]={0,0,0,0};
   double v21[4][4]={1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,
                     1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,};
   double v31[4][4][4]={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                        0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                        0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                        0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                        0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                        0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                        0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                        0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,};
   double a[4]={0.0,0.0,0.0,0.0};
   double d[8]={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
   double e[8]={1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
   double f[8]={2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0};
   unsigned long int LT00A;
   long int IX00A,IX00B,IX00C;
   long int IX00D,IX00E,IX00F;
   long int I1,J1,K1,L1,I,LP1,LP2,AA,i,j,J;
   I1=1; 
   J1=1; 
   K1=1; 
   L1=4; 
   for(I    =1;I    <=4;I    +=1)
   {
     for(IX00A=1;IX00A<=4;IX00A+=1)
     {
       V11(IX00A)=I+V21(I1,IX00A)+V21(IX00A,J1)+V21(IX00A,1);
       V11(IX00A)=+4+V21(I1,IX00A)+V21(IX00A,J1)+V21(IX00A,1);
 LBL_4010:;
     }
   }
   for(i=1;i<=4;i++){
     printf(" %ld \n",V11(i));
   }
   for(LP1=1;LP1<=4;LP1+=1)
   {
      LT00A=(V11(LP1)!=2)?1:0;
      if (!LT00A)goto LBL_4100         ;
      printf(" STOP 408\n");
      goto LBL_999;
 LBL_4100:;
 LBL_100:;
    }
   for(IX00A=1;IX00A<=4;IX00A+=1)
   {
      V21(IX00A,3)=2.;
 LBL_4110:;
   }
   for(IX00A=1;IX00A<=4;IX00A+=1)
   {
      V21(2,IX00A)=V21(IX00A,3);
 LBL_4210:;
   }
   for(i=1;i<=4;i++){
     printf(" %g %g %g %g \n",V21(i,1),V21(i,2),V21(i,3),V21(I,4));
   }
   for(LP1=1;LP1<=4;LP1+=1)
    {
      LT00A=(V21(2,LP1)!=2)?1:0;
      if (!LT00A)goto LBL_4200         ;
      goto LBL_999;
 LBL_4200:;
      LT00A=(V21(LP1,3)!=2)?1:0;
      if (!LT00A)goto LBL_4300         ;
      goto LBL_999;
 LBL_4300:;
 LBL_200:;
   }
   for(IX00C    =1;IX00C    <=4;IX00C    ++)
     {
     for(IX00B    =1;IX00B    <=4;IX00B    ++)
     {
       V31(I1,IX00B,IX00C)=3.;
 LBL_4310:;
     }
   }
   for(IX00C    =1;IX00C    <=4;IX00C    ++)
   {
     for(IX00B    =1;IX00B    <=4;IX00B    ++)
     {
        V31(IX00B,IX00C,K1)=3.;
 LBL_4410:;
     }
   }
   for(IX00C    =1;IX00C    <=4;IX00C    ++)
   {
     for(IX00B    =1;IX00B    <=4;IX00B    ++)
     {
        V21(IX00B,IX00C)=V31(I1,IX00B,IX00C)+V31(IX00B,IX00C,K1);
 LBL_4510:;
     }
   }
   for(i=1;i<=4;i++){
     printf(" %g %g %g %g \n",V21(i,1),V21(i,2),V21(i,3),V21(i,4));
   }
   for(LP1=1;LP1<=4;LP1+=1)
   {
     for(LP2=1;LP2<=4;LP2+=1)
     {
       LT00A=(V21(LP1,LP2)!=6)?1:0;
       if (!LT00A)goto LBL_4400         ;
      goto LBL_999;
 LBL_4400:;
 LBL_300:;
     }
   }
   for(IX00D    =1;IX00D    <=4;IX00D    ++)
   {
     for(IX00C    =1;IX00C    <=4;IX00C    ++)
     {
       for(IX00B    =1;IX00B    <=4;IX00B    ++)
       { 
          V31(IX00B,IX00C,IX00D)=0.;
 LBL_4610:;
       } 
     }
   }
   for(IX00A=1;IX00A<=4;IX00A+=1)
   {
      V31(IX00A,J1,K1)=4.;
 LBL_4710:;
   }
   for(IX00A=1;IX00A<=4;IX00A+=1)
   {
      V31(I1,J1,IX00A)=V31(IX00A,J1,K1);
 LBL_4810:;
   }
   for(j=1;j<=4;j++){
     for(i=1;i<=4;i++){
       printf(" %g %g %g %g \n",V31(i,j,1),V31(i,j,2),V31(i,j,3),V31(i,j,4));
     }
   }
   for(LP1=1;LP1<=4;LP1+=1)
   {
      LT00A=(V31(I1,J1,LP1)!=4)?1:0;
      if (!LT00A)goto LBL_4500         ;
      goto LBL_999;
 LBL_4500:;
 LBL_400:;
   }
   for(IX00A=1;IX00A<=4;IX00A+=1)
   {
      V11(IX00A)=0;
 LBL_4910:;
   }
   for(IX00D    =1;IX00D    <=4;IX00D    ++)
   {
     for(IX00C    =1;IX00C    <=4;IX00C    ++)
     {
       for(IX00B    =1;IX00B    <=4;IX00B    ++)
       { 
         V31(IX00B,IX00C,IX00D)=0.;
 LBL_4020:;
       } 
     }
   }
   IX00A=(L1-2)/J1+1;
   for(IX00B=2;IX00B<=L1;IX00B+=J1)
   {
      V31(IX00B,2,3)=5.;
 LBL_4120:;
   }
   IX00A=(3-I1)/K1+1;
   for(IX00B=I1;IX00B<=3;IX00B+=K1)
   {
      V31(1,IX00B,3)=5.;
 LBL_4220:;
   }
   IX00A=(L1-2)/J1+1;
   IX00B=(L1-2)/J1+1;
   IX00C=(3-I1)/K1+1;
   for(IX00D=1;IX00D<=IX00B;IX00D++)
   {
      IX00E=(IX00D-1)*J1+2;
      IX00F=(IX00D-1)*K1+I1;
      V11(IX00E)=V31(IX00E,2,3)+V31(1,IX00F,3);
 LBL_4320:;
   }
   for(i=1;i<=4;i++){
     printf(" %ld \n",V11(i));
   }
   for(LP1=2;LP1<=4;LP1+=1)
    {
      LT00A=(V11(LP1)!=10)?1:0;
      if (!LT00A)goto LBL_4600         ;
      goto LBL_999;
 LBL_4600:;
 LBL_500:;
   }
   for(LP1=1;LP1<=4;LP1+=1)
   {
 LBL_600:;
      V11(LP1)=LP1;
   }
   for(IX00A=1;IX00A<=4;IX00A+=1)
   {
      A(V11(IX00A))=V11(IX00A);
 LBL_4420:;
   }
   for(i=1;i<=4;i++){
     printf(" %g \n",A(i));
   }
   for(LP1=1;LP1<=4;LP1+=1)
    {
      AA=LP1;
      LT00A=(A(LP1)!=AA)?1:0;
      if (!LT00A)goto LBL_4700         ;
      goto LBL_999;
 LBL_4700:;
 LBL_700:;
   }
   for(IX00A=1;IX00A<=4;IX00A+=1)
   {
      A(V11(IX00A))=I1;
 LBL_4520:;
   }
   for(i=1;i<=4;i++){
     printf(" %g \n",A(i));
   }
   for(LP1=1;LP1<=4;LP1+=1)
   {
      LT00A=(A(LP1)!=1)?1:0;
      if (!LT00A)goto LBL_4800         ;
      goto LBL_999;
 LBL_4800:;
 LBL_800:;
   }
   for(IX00A=1;IX00A<=8;IX00A+=1)
   {
      D(IX00A)=E(IX00A)+F(IX00A);
 LBL_4620:;
   }
   for(i=1;i<=8;i++){
     printf(" %g \n",D(i));
   }
   for(LP1=1;LP1<=8;LP1+=1)
   {
      LT00A=(D(LP1)!=3)?1:0;
      if (!LT00A)goto LBL_4900         ;
      goto LBL_999;
 LBL_4900:;
 LBL_900:;
   }
 LBL_999:;
exit (0);
 }
