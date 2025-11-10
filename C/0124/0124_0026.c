#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L(i,j) l[i-1][j-1]
#define S(i,j) s[i-1][j-1]
#define BS(i,j,k) bs[i-1][j-1][k-1]
 float l[20][20];
 double s[20][20];
 float bs[20][20][5];
int main()
  {
   long int G,N=20;
   long int BG1,BG2;
   double NB=1.;
   long int J,I,I1,I2,I3,I4,K,i,j,k;
   float SS,BS1,BS2,BS3,BS4,BS5,BS6,BS7,BS8,BS9,BS10;
   for(j=0;j< 20;j++){
    for(i=0;i< 20;i++){
      l[i][j]=2.0;
    }
   }
   for(j=0;j< 20;j++){
    for(i=0;i< 20;i++){
      s[i][j]=1.0;
    }
   }
   for(k=0;k<  5;k++){
    for(j=0;j< 20;j++){
     for(i=0;i< 20;i++){
       bs[i][j][k]=2.0;
     }
    }
   }
   BG1=N-1;
   BG2=N;
   G=0;
   for(J=1;J<=20;J+=2)
   {
    for(I=2;I<=N;I+=2)
    {
      G=G+I;
 LBL_10:;
    }
   }
   for(J=2;J<=N;J+=2)
   {
      L(1,J)=0.;
      for(I=2;I<=N;I+=2)
      {
         L(1,J)=L(I,J)+(float)(I);
 LBL_20:;
      }
   }
   for(J=10;J<=20;J++)
   {
      I1=J*2;
      I2=J+2;
      I3=J-2;
      I4=J/2;
      SS=0.;
      for(I=1;I<=N;I+=N/10)
      {
        S(I,J)=S(I,J)*3+S(I,J)+3+S(I,J)+I4+S(I,J)+I1+I2+I3;
        SS=SS+(double)(N);
 LBL_30:;
      }
   }
   for(K=1;K<=20;K+=3)
   {
     for(J=1;J<=20;J+=3)
     {
       for(I=1;I<=20;I+=3)
       {
         BG2=BG2+BG1;
 LBL_40:;
       }
       printf(" %ld \n",BG2);
 LBL_41:;
     }
 LBL_42:;
   }
   for(J=1;J<=5;J++)
   {
      if (J >  3)
      {
         K=(0.5+pow(J,2))-5;
      }
      else
      {
         K=J*2;
      }
      BS1=0;
      BS2=0;
      BS3=0;
      BS4=0;
      BS5=0;
      BS6=0;
      BS7=0;
      BS8=0;
      BS9=0;
      BS10=0;
      for(I=1;I<=N;I++)
      {
         BS(I,K,1)=BS(I,K,2)+BS(I,K,3)+BS(I,K,4)+BS(I,K,5);
         BS1=BS1+I;
         BS2=BS2+I;
         BS3=BS3+I;
         BS4=BS4+I;
         BS5=BS5+I;
         BS6=BS6+I;
         BS7=BS7+I;
         BS8=BS8+I;
         BS9=BS9+I;
         BS10=BS10+I;
 LBL_50:;
      }
   }
   NB=0.0;
   for(I=1;I<=N-10;I+=2)
   {
      NB=NB+(float)(I);
 LBL_60:;
   }
   printf(" ** PATTERN2010 **\n");
   printf(" %ld %ld %ld %g \n",G,BG1,BG2,NB);
   printf(" %g %g %g %g %g %g %g %g %g %g \n",
           BS1,BS2,BS3,BS4,BS5,BS6,BS7,BS8,BS9,BS10);
   for(j=1;j<=20;j++){
     for(i=1;i<=20;i+=4){
       printf(" %g %g ",L(i,j),S(i,j));
       printf(" %g %g ",L(i+1,j),S(i+1,j));
       printf(" %g %g ",L(i+1,j),S(i+1,j));
       printf(" %g %g \n",L(i+1,j),S(i+1,j));
     }
   }
   for(k=1;k<= 5;k++){
     for(j=1;j<= 20;j++){
       for(i=1;i<=20;i+=4){
         printf(" %g ",BS(i,j,k));
         printf(" %g ",BS(i+1,j,k));
         printf(" %g ",BS(i+2,j,k));
         printf(" %g \n",BS(i+3,j,k));
       }
     }
   }
exit (0);
  }
