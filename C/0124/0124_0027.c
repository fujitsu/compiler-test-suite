#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define G(i,j) g[i-1][j-1]
#define L(i,j) l[i-1][j-1]
#define S(i,j) s[i-1][j-1]
#define BG1(i) bg1[i-1]
#define BG2(i) bg2[i-1]
#define BS2(i) bs2[i-1]
#define BS3(i) bs3[i-1]
#define BS4(i) bs4[i-1]
#define BS5(i) bs5[i-1]
#define BS6(i) bs6[i-1]
#define BS7(i) bs7[i-1]
#define BS8(i) bs8[i-1]
#define BS9(i) bs9[i-1]
#define BS10(i) bs10[i-1]
#define BS1(i) bs1[i-1]
#define BS(i,j,k) bs[i-1][j-1][k-1]
#define NB(i,j) nb[i-1][j-1]
 long int g[20][20];
 float l[20][20];
 double s[20][20];
 long int bg1[20],bg2[20];
 long int bs2[20],bs3[20],bs4[20],bs5[20];
 long int bs6[20],bs7[20],bs8[20],bs9[20],bs10[20],bs1[20];
 long int bs[20][20][5];
 double nb[20][20];
int main()
  {
   long int N=1,INC=20;
   long int I,J,JJ,K,KK,I1,I2,I3,I4,i,j,k;
   for(j=0;j< 20;j++){
      for(i=0;i< 20;i++){
         g[i][j]=1;
         l[i][j]=2.0;
         s[i][j]=1.0;
      }
   }
   for(i=0;i< 20;i++){
      bs1[i]=5;
   }
   for(k=0;k<  5;k++){
      for(j=0;j< 20;j++){
         for(i=0;i< 20;i++){
            bs[i][j][k]=2;
         }
      }
   }
   for(j=0;j< 20;j++){
      for(i=0;i< 20;i++){
         nb[i][j]=1.;
      }
   }
   for(i=0;i< 20;i++){
      bg1[i]=2;
      bg2[i]=1;
      bs3[i]=2;
      bs4[i]=1;
      bs5[i]=2;
      bs2[i]=9;
      bs6[i]=9;
      bs7[i]=3;
      bs8[i]=1;
      bs9[i]=2;
      bs10[i]=9;
   }
   printf(" PATTERN1018\n");
   for(J=1;J<=2;J++)
   {
      for(I=1;I<=20;I+=2)
      {
         BG1(I)=BG1(I)+(BG2(I)+1);
 LBL_10:;
      }
   }
   for(I=1;I<=INC;I++)
   {
      BS2(I)=BS3(I)+BS4(I)+BS5(I)+BS6(I)+BS7(I)+BS8(I)+BS9(I)/BS10(I);
 LBL_20:;
   }
   printf(" ITEM1\n");
   for(i=1;i<=20;i++){
      printf(" BG1= %ld  BS2= %ld \n",BG1(i),BS2(i));
   }
   for(J=1;J<=20;J+=2)
   {
      for(I=1;I<=20;I+=2)
      {
         G(I,J)=0;
 LBL_11:;
      }
   }
   for(K=15;K<=20;K++)
   {
      for(J=10;J<=12;J++)
      {
         for(I=1;I<=20;I++)
         {
            KK=1+N+J;
            L(I,KK)=0.0;
 LBL_21:;
         }
         printf(" K= %ld  KK= %ld \n",K,KK);
 LBL_22:;
      }
   }
   for(J=10;J<=20;J++)
   {
      I1=J*2;
      I2=J+2;
      I3=J-2;
      I4=J/2;
      for(I=1;I<=20;I+=I4)
      {
         S(I,I)=I1+I2+I3+I4+J;
 LBL_31:;
      }
   }
   for(J=1;J<=1;J++)
   {
      for(I=1;I<=20;I+=3)
      {
         BG2(I)=(BG1(I)+I)+BG1(I)+J;
 LBL_41:;
      }
   }
   for(J=1;J<=2;J++)
   {
      for(I=1;I<=20;I++)
      {
         BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)+
           BS1(I)-BS2(I)+(int)(0.5+pow(BS3(I),I))-BS4(I)*BS5(I)+
           BS6(I)-BS7(I)+(int)(0.5+pow(BS8(I),I))-BS9(I)*BS10(I);
 LBL_51:;
      }
   }
   for(J=6;J<=10;J++)
   {
      for(I=1;I<=10;I+=2)
      {
         NB(I,J)=0;
 LBL_61:;
      }
   }
   printf(" ITEM2\n");
   for(j=1;j<=20;j++){
     for(i=1;i<=20;i++){
       printf(" G= %ld  L= %g ",G(i,j),L(i,j));
       printf(" S= %g  NB= %g \n",S(i,j),NB(i,j));
     }
   }
   for(j=1;j<=20;j++){
      for(i=1;i<=20;i++){
         printf(" BS(i,j,1)= %ld ",BS(i,j,1));
         printf(" BS(i,j,2)= %ld ",BS(i,j,2));
         printf(" BS(i,j,3)= %ld ",BS(i,j,3));
         printf(" BS(i,j,4)= %ld ",BS(i,j,4));
         printf(" BS(i,j,5)= %ld \n",BS(i,j,5));
      }
   }
   for(i=1;i<=20;i++){
     printf(" BG1= %ld  BG2= %ld  BS2= %ld \n",BG1(i),BG2(i),BS2(i));
   }
   for(JJ=1;JJ<=2;JJ++)
   {
      for(J=1;J<=10;J+=2)
      {
         for(I=1;I<=20;I+=2)
         {
            G(I,J)=(G(I,J)+10)/I;
 LBL_310:;
         }
      }
   }
   for(J=10;J<=20;J++)
   {
      I1=J*2;
      I2=J+2;
      I3=J-2;
      I4=J/2;
      for(I=1;I<=20;I+=I4)
      {
         S(I,I)=(I1+I2+I3+I4+J)/I;
 LBL_330:;
      }
   }
   for(J=1;J<=1;J++)
   {
      for(I=1;I<=20;I+=3)
      {
         BG2(I)=((BG1(I)+I)+BG1(I)+J)/I;
 LBL_340:;
      }
   }
   for(J=1;J<=20;J++)
   {
      for(I=1;I<=20;I++)
      {
         BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)+
           BS1(I)-BS2(I)+(int)(0.5+pow(BS3(I),I))-BS4(I)*BS5(I)+
           BS6(I)-BS7(I)+(int)(0.5+pow(BS8(I),I))-BS9(I)*BS10(I)*J/I;
 LBL_350:;
      }
   }
   for(J=6;J<=10;J++)
   {
      for(I=1;I<=10;I+=2)
      {
         NB(I,J)=J/I;
 LBL_360:;
      }
   }
   printf(" ITEM3\n");
   for(j=1;j<=20;j++){
      for(i=1;i<=20;i++){
         printf(" G= %ld  L= %g ",G(i,j),L(i,j));
         printf(" S= %g  NB= %g \n",S(i,j),NB(i,j));
      }
   }
   for(j=1;j<=20;j++){
      for(i=1;i<=20;i++){
        printf(" BS(i,j,1)= %ld ",BS(i,j,1));
        printf(" BS(i,j,2)= %ld ",BS(i,j,2));
        printf(" BS(i,j,3)= %ld ",BS(i,j,3));
        printf(" BS(i,j,4)= %ld ",BS(i,j,4));
        printf(" BS(i,j,5)= %ld \n",BS(i,j,5));
      }
   }
   for(i=1;i<=20;i++){
      printf(" BG1= %ld  BG2= %ld \n",BG1(i),BG2(i));
   }
   for(JJ=1;JJ<=2;JJ++)
   {
      for(J=1;J<=20;J+=2)
      {
         for(I=1;I<=20;I+=2)
         {
            G(I,J)=(G(I,J)+10);
 LBL_410:;
         }
      }
   }
   for(J=10;J<=20;J++)
   {
      I1=J*2;
      I2=J+2;
      I3=J-2;
      I4=J/2;
      for(I=1;I<=20;I+=3)
      {
         S(I,I)=(I1+I2+I3+I4+J);
 LBL_430:;
      }
   }
   for(J=1;J<=5;J++)
   {
      for(I=1;I<=20;I+=3)
      {
         BG2(I)=((BG1(I)+I)+BG1(I)+J);
 LBL_440:;
      }
   }
   for(J=1;J<=20;J++)
   {
      for(I=1;I<=20;I++)
      {
         BS(I,J,1)=BS(I,J,2)+BS(I,J,3)+BS(I,J,4)+BS(I,J,5)+
          BS1(I)-BS2(I)+(int)(0.5+pow(BS3(I),I))-BS4(I)*BS5(I)  +
          BS6(I)-BS7(I)+(int)(0.5+pow(BS8(I),I))-BS9(I)*BS10(I)*J;
 LBL_450:;
      }
   }
   for(J=6;J<=10;J++)
   {
      for(I=1;I<=10;I+=2)
      {
         NB(I,J)=J/I;
 LBL_460:;
      }
   }
   printf(" ITEM4\n");
   for(j=1;j<=20;j++){
      for(i=1;i<=20;i++){
         printf(" %ld %g %g %g \n",G(i,j),L(i,j),S(i,j),NB(i,j));
      }
   }
   for(k=1;k<=5;k++){
      for(j=1;j<=20;j++){
         for(i=1;i<=20;i++){
            printf(" %ld \n",BS(i,j,k));
         }
      }
   }
   for(i=1;i<=20;i++){
      printf(" %ld %ld \n",BG1(i),BG2(i));
   }
exit (0);
  }
