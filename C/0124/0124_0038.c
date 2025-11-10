#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define SCR1A(i) scr1a[i-1]
#define SCR1B(i) scr1b[i-1]
#define SCR1C(i) scr1c[i-1]
#define SCR1D(i) scr1d[i-1]
#define SCR2A(i) scr2a[i-1]
#define SCR2B(i) scr2b[i-1]
#define SCR2C(i) scr2c[i-1]
#define SCR2D(i) scr2d[i-1]
#define SCR8A(i,j) scr8a[i-1][j-1]
#define SCR8B(i,j) scr8b[i-1][j-1]
#define SCR8C(i,j) scr8c[i-1][j-1]
#define SCR6A(i) scr6a[i-1]
#define SCR6B(i) scr6b[i-1]
#define SCR6C(i) scr6c[i-1]
#define SCR6D(i) scr6d[i-1]
#define SCR7A(i) scr7a[i-1]
#define SCR7B(i) scr7b[i-1]
#define SCR8D(i,j) scr8d[i-1][j-1]
 float scr1a[100],scr1b[100],scr1c[100],scr1d[100];
 float scr2a[100],scr2b[100],scr2c[100],scr2d[100];
 double scr6a[100],scr6b[100],scr6c[100],scr6d[100];
 double scr7a[100],scr7b[100];
 double scr8a[10][10],scr8b[10][10],scr8c[10][10];
 double scr8d[2][50];
int main()
  {
  long int I,J,i,j,I1,I2,I3,I4,I5,I6,I7,I8,I9;
  for(i=0;i< 100;i++){
     scr6a[i]=1.0;
     scr6b[i]=2.0;
     scr6d[i]=10.0;
  }
  for(j=0;j<10 ;j++){
   for(i=0;i<10;i++){
      scr8a[i][j]=1.0;
      scr8b[i][j]=1.0;
      scr8c[i][j]=1.0;
   }
  }
  for(j=0;j<50 ;j++){
   for(i=0;i< 2;i++){
      scr8d[i][j]=1.0;
   }
  }
   printf(" *** PATTERN3100 ***\n");
   for(I1=1;I1<=1;I1++)
   {
    for(I2=1;I2<=I1;I2++)
    {
     for(I3=1;I3<=I2;I3++)
     {
      for(I4=1;I4<=I3;I4++)
      {
       for(I5=1;I5<=I4;I5++)
       { 
        for(I6=1;I6<=I5;I6++)
        {
         for(I7=1;I7<=1;I7++)
         {
          for(I8=1;I8<=I7+I5-1;I8++)
          {
           for(I9=1;I9<=10+I8-10;I9++)
           {
            for(J=1;J<=2;J++)
            {
             for(I=1;I<=100;I++)
             {
              SCR1A(I)=1.0;
              SCR1B(I)=2.0;
              SCR1C(I)=1.0;
              SCR1D(I)=2.0;
              SCR2A(I)=1.0+SCR1A(I);
              SCR2B(I)=2.0+SCR1A(I);
              SCR2C(I)=1.0-SCR1C(I);
              SCR2D(I)=0.0+SCR1A(I)-SCR1B(I)+SCR1C(I)-SCR1D(I)+SCR2A(I)+1.0;
              SCR6A(I)=SCR6A(I)-10.0+SCR7A(J)-SCR7A(I)-SCR7B(I)+SCR7B(J);
              SCR7B(20+J)=SCR6A(J)-SCR6A(I)-SCR6B(20+J)+SCR6B(50+I8)-100.0;
              if (SCR6A(I) >  SCR7B(I))
              {
               SCR2D(I)=0.1+SCR1A(I)+SCR1B(I)-SCR1C(I)+SCR1D(I)+SCR2A(I)+1.0;
               SCR6A(I)=SCR6A(I)-10.0-SCR7A(J)-SCR7A(I)-SCR7B(I)+SCR7B(J);
               SCR7B(20+J)=SCR6A(J)+SCR6A(I)+SCR6B(20+J)+SCR6B(50+I8);
              }
 LBL_10:;
             }
            }
           }
          }
         }
        }
       } 
      }
     }
    }
   }
   for(I1=1;I1<=1;I1++)
   {
    for(I2=1;I2<=I1;I2++)
    {
     for(I3=1;I3<=I2;I3++)
     {
      for(I4=1;I4<=I3;I4++)
      {
       for(I5=1;I5<=I4;I5++)
       { 
        for(I6=1;I6<=I5;I6++)
        {
         for(I7=1;I7<=2;I7++)
         {
          for(I8=1;I8<=I7+I5;I8++)
          {
           for(I9=1;I9<=1;I9++)
           {
            for(J=1;J<=1;J++)
            {
             for(I=1;I<=100;I++)
             {
              SCR2A(I)=1.0+pow(SCR1A(I),2.0);
              SCR2B(I)=2.0+pow(SCR1A(I),2.0);
              SCR2C(I)=4.0+pow(SCR1C(I),2.0);
              SCR2D(I)=8.0+SCR1A(I)+SCR1B(I)+SCR1C(I)+SCR1D(I)+SCR2A(I)+1.0;
              SCR6A(I)=SCR6A(I)+10.0+SCR7A(J)+SCR7A(I)+SCR7B(I)+SCR7B(J);
              SCR7B(20+J)=SCR6A(J)+SCR6A(I)+SCR6B(20+J)+SCR6B(50+I8);
            if (SCR6A(I) <  0.0)
               SCR6A(I)=((fabs(SCR6A(I))+1.0)<2.0)?(fabs(SCR6A(I))+1.0):2.0;
            if (SCR7B(I) <  0.0)
               SCR7B(I)=((fabs(SCR7B(I))+2.0)<10.0)?(fabs(SCR7B(I))+2.0):10.0;
            if (SCR6A(I) >  250.0)
               SCR6A(I)=((fabs(SCR6A(I))+1.0)<2.0)?(fabs(SCR6A(I))+1.0):2.0;
            if (SCR7B(I) >  250.0)
               SCR7B(I)=((fabs(SCR7B(I))+2.0)<10.0)?(fabs(SCR7B(I))+2.0):10.0;
            if (pow(SCR6A(I),10.0) >  pow(SCR7B(I),2.0))
              {
               SCR2D(I)=8.0+SCR1A(I)+SCR1B(I)+SCR1C(I)+SCR1D(I)+SCR2A(I)+1.0;
               SCR6A(I)=SCR6A(I)+10.0+SCR7A(J)+SCR7A(I)+SCR7B(I)+SCR7B(J);
               SCR7B(20+J)=pow(SCR6A(J),2.0)+SCR6A(I)+SCR6B(20+J)+SCR6B(50+I8);
              }
 LBL_20:;
             }
            }
           }
          }
         }
        }
       } 
      }
     }
    }
   }
   for(I=50;I<=100;I+=10)
   {
      if (pow(pow(SCR1A(I),SCR1B(I)),2.0) >  10.0)
      {
         SCR1A(I)=pow(pow(SCR1B(I),2.0),SCR1A(I))+2;
      }
      else
      {
        SCR1A(I)=pow(pow(SCR1B(I),10.0),SCR1A(I))+2;
      }
      if ((SCR2D(2) >  0.0) &&
          (SCR1B(I) < 252.00) &&
          (SCR2D(I) < 251.99999999991) &&
          (SCR7A(I) < 251.99999999991))
      {
         if (pow(SCR2D(I),SCR1B(I)) >
             (pow(pow(SCR2D(I),SCR1B(I)),SCR7A(I))-1.0))
            SCR8A(1,1)=I+1;
         else
            SCR8A(1,1)=I+2;
      }
 LBL_30:;
   }
   for(J=1;J<=10;J++)
   {
    for(I=91;I<=100;I++)
    {
      SCR1A(I)=SCR1A(10)+SCR1B(10)+SCR1C(I)+SCR1C(95);
      SCR7A(I)=SCR7A(I)+SCR8A(10,10)+SCR8A(J,I-90);
      SCR2B(J)=SCR2B(I)+SCR1A(J);
 LBL_40:;
    }
   }
   for(i=1;i<=100;i++){
     printf(" %g %g %g %g ",SCR1A(i),SCR1B(i),SCR1C(i),SCR1D(i));
     printf(" %g %g %g %g ",SCR2A(i),SCR2B(i),SCR2C(i),SCR2D(i));
     printf(" %g %g %g %g ",SCR6A(i),SCR6B(i),SCR6C(i),SCR6D(i));
     printf(" %g %g \n",SCR7A(i),SCR7B(i));
   }
   for(j=1;j<=10;j++){
    for(i=1;i<=10;i++){
     printf(" %g %g %g \n",SCR8A(i,j),SCR8B(i,j),SCR8C(i,j));
    }
   }
   for(j=1;j<=50;j++){
    for(i=1;i<=2;i++){
     printf(" %g \n",SCR8D(i,j));
    }
   }
exit (0);
  }
 
