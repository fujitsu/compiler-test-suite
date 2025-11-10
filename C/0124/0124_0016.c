#include <stdlib.h>
#include "000.h"
#include <stdio.h>
#include <math.h>
#define RDATA1(i) rdata1[i-1]
#define RDATA2(i) rdata2[i-1]
#define RDATA3(i) rdata3[i-1]
#define RDATA4(i) rdata4[i-1]
#define RDATA5(i) rdata5[i-1]
#define RDATA6(i) rdata6[i-1]
#define RDATA7(i) rdata7[i-1]
#define RDATA8(i) rdata8[i-1]
#define LDATA1(i) ldata1[i-1]
#define LDATA2(i) ldata2[i-1]
 float    rdata1[50],rdata2[50],rdata3[50],rdata4[50];
 double   rdata5[50],rdata6[50],rdata7[50],rdata8[50];
 unsigned long int ldata1[50],ldata2[50];
int main()
  {
   long int INDEX,i,I;
   float A,AA;
   for(i=0;i< 20;i++){
      ldata1[i]=1;
   }
   for(i=20;i< 30;i++){
      ldata1[i]=0;
   }
   for(i=30;i< 49;i++){
      ldata1[i]=1;
   }
   ldata1[49]=0;
   for(i=0;i< 50;i++){
      ldata2[i]=0;
   }
   A=1.0;
   for(I=1;I<=50;I++)
   {
     if (LDATA1(I)==1)
     {
       RDATA1(I)=A;
       RDATA2(I)=1+1.1;
       RDATA3(I)=A+2.1;
       RDATA4(I)=A+3.1;
       RDATA4(I)=A+4.1;
       A=A+1.0;
     }
     else
     {
       RDATA1(I)=A;
       RDATA2(I)=1+1.1;
       RDATA3(I)=A+2.1;
       RDATA4(I)=A+3.1;
       RDATA4(I)=A+4.1;
       A=A+1.0;
     }
   }
   AA=5.5;
   for(I=1;I<=50;I++)
   {
     if (LDATA1(I)==1)
     {
       RDATA5(I)=AA;
       RDATA6(I)=AA;
       RDATA7(I)=AA;
       RDATA8(I)=AA;
       LDATA1(I)=1;
       LDATA2(I)=0;
       RDATA1(I)=RDATA2(I)-RDATA3(I)+RDATA4(I);
       RDATA2(I)=RDATA4(I)-RDATA3(I);
       RDATA3(I)=RDATA1(I)*RDATA1(I)/RDATA1(I);
       RDATA4(I)=RDATA3(I)*RDATA3(I)/RDATA3(I);
       RDATA3(I)=pow(RDATA3(I),3);
       RDATA4(I)=RDATA4(I)/2;
     }
  else
     {
       RDATA5(I)=AA;
       RDATA6(I)=AA;
       RDATA7(I)=AA;
       RDATA8(I)=AA;
       LDATA1(I)=1;
       LDATA2(I)=0;
       RDATA1(I)=RDATA2(I)-RDATA3(I)+RDATA4(I);
       RDATA2(I)=RDATA4(I)-RDATA3(I);
       RDATA3(I)=RDATA1(I)*RDATA1(I)/RDATA1(I);
       RDATA4(I)=RDATA3(I)*RDATA3(I)/RDATA3(I);
       RDATA3(I)=pow(RDATA3(I),3);
       RDATA4(I)=RDATA4(I)/2;
     }
   }
   printf("  ** PATTERN1103 ** TEST1 \n");
   for(i=1;i<=50;i++){
     printf(" %11.2f %11.2f %11.2f %11.2f %lu %lu \n",
                        RDATA1(i),RDATA2(i),RDATA3(i),
                                    RDATA4(i),LDATA1(i),LDATA2(i));
   }
 LBL_100:;
   for(I=1;I<=50;I++)
   {
     if (LDATA1(I)==1)
     {
       LDATA1(I)=(LDATA1(I)&&(!(LDATA2(I))))?1:0;
       LDATA2(I)=(LDATA2(I)||(!(LDATA1(I))))?0:1;
       LDATA1(I)=(!(LDATA1(I)||LDATA2(I)))?1:1;
     }
 LBL_30:;
   }
   printf("  ** PATTERN1103 ** TEST2 \n");
   for(i=1;i<=50;i++){
     printf(" %lu %lu \n",LDATA1(i),LDATA2(i));
   }
 LBL_200:;
   INDEX=0;
   for(I=1;I<=50;I++)
   {
     if (LDATA1(I)==1)
     {
       RDATA1(I)=RDATA1(I)+RDATA2(I)+RDATA1(I);
       if (LDATA2(I)==1)
       {
         RDATA2(I)=RDATA2(I)*RDATA2(I)/RDATA2(I);
         INDEX=I;
       }
       else
       {
         if (RDATA1(I) == RDATA2(I))goto LBL_40         ;
       }
       if (RDATA1(I) <  RDATA2(I))
       {
         RDATA1(I)=RDATA2(I)+RDATA1(I);
       }
       if (RDATA1(I) <= RDATA2(I))
       {
         RDATA1(I)=RDATA3(I)+RDATA3(I);
       }
       if (RDATA3(I) == 0.0)goto LBL_40         ;
       if (RDATA4(I) != 0.0)goto LBL_40         ;
       if (RDATA5(I) >  RDATA6(I))
       {
         RDATA5(I)=RDATA6(I);
       }
       if (RDATA5(I) >= RDATA6(I))
       {
         RDATA5(I)=RDATA6(I);
       }
     }
 LBL_40:;
   }
   RDATA1(INDEX)=0.0;
   RDATA2(INDEX)=0.0;
   RDATA3(INDEX)=0.0;
   printf("  ** PATTERN1103 ** TEST 3 \n");
   for(i=1;i<=50;i++){
     printf(" %7.2f %7.2f %7.2f %7.2f %7.2f %7.2f %7.2f %7.2f \n",
         RDATA1(i),RDATA2(i),RDATA3(i),RDATA4(i),RDATA5(i),RDATA6(i),
                                          RDATA7(i),RDATA8(i));
   }
 LBL_300:;
   for(I=1;I<=50;I++)
   {
     if (LDATA2(I)==1)
     {
       RDATA1(I)=fabs(RDATA2(I));
       RDATA3(I)=fabs(RDATA4(I));
       RDATA5(I)=fabs(RDATA6(I));
       RDATA7(I)=fabs(RDATA8(I));
     }
 LBL_60:;
   }
   printf("  ** PATTERN1103 ** TEST4 \n");
   for(i=1;i<=50;i++){
     printf(" %7.2f %7.2f %7.2f %7.2f \n",
                       RDATA1(i),RDATA3(i),RDATA5(i),RDATA7(i));
   }
 LBL_400:;
exit (0);
  }
