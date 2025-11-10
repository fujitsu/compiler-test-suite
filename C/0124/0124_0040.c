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
#define SCR3A(i) scr3a[i-1]
#define SCR3B(i) scr3b[i-1]
#define SCR3C(i) scr3c[i-1]
#define SCR3D(i) scr3d[i-1]
#define SCR4A(i) scr4a[i-1]
#define SCR4B(i) scr4b[i-1]
#define SCR4C(i) scr4c[i-1]
#define SCR4D(i) scr4d[i-1]
 float scr1a[100],scr1b[100],scr1c[100],scr1d[100];
 float scr2a[100],scr2b[100],scr2c[100],scr2d[100];
 float scr3a[100],scr3b[100],scr3c[100],scr3d[100];
 float scr4a[100],scr4b[100],scr4c[100],scr4d[100];
int main()
  {
   long int I,i;
   printf(" *** PATTERN3111 ***\n");
   printf(" *** PATTERN3111 LABEL  10 ***\n");
   for(I=1;I<=100;I+=4)
   {
      SCR1A(I)=1;
      SCR1B(I)=2;
      SCR1C(I)=3;
      SCR1D(I)=4;
      SCR2A(I)=5;
      SCR2B(I)=6;
      SCR2C(I)=7;
      SCR2D(I)=8;
      SCR3A(I)=9;
      SCR3B(I)=10;
      SCR3C(I)=11;
      SCR3D(I)=12;
      SCR4A(I)=13;
      SCR4B(I)=14;
      SCR4C(I)=15;
      SCR4D(I)=16;
      if (I <= 99)
      {
         SCR1A(I+1)=1+SCR1A(I)+16;
         SCR1B(I+1)=2+SCR1B(I)+15;
         SCR1C(I+1)=3+SCR1C(I)+14;
         SCR1D(I+1)=4+SCR1D(I)+13;
         SCR2A(I+1)=5+SCR2A(I)+12;
         SCR2B(I+1)=6+SCR2B(I)+11;
         SCR2C(I+1)=7+SCR2C(I)+10;
         SCR2D(I+1)=8+SCR2D(I)+9;
         SCR3A(I+1)=9+SCR3A(I)+8;
         SCR3B(I+1)=10+SCR3B(I)+7;
         SCR3C(I+1)=11+SCR3C(I)+6;
         SCR3D(I+1)=12+SCR3D(I)+5;
         SCR4A(I+1)=13+SCR4A(I)+4;
         SCR4B(I+1)=14+SCR4B(I)+3;
         SCR4C(I+1)=15+SCR4C(I)+2;
         SCR4D(I+1)=16+SCR4D(I)+1;
         if (I <= 98)
         {
            SCR1A(I+2)=1+SCR1A(I+1)+16;
            SCR1B(I+2)=2+SCR1B(I+1)+15;
            SCR1C(I+2)=3+SCR1C(I+1)+14;
            SCR1D(I+2)=4+SCR1D(I+1)+13;
            SCR2A(I+2)=5+SCR2A(I+1)+12;
            SCR2B(I+2)=6+SCR2B(I+1)+11;
            SCR2C(I+2)=7+SCR2C(I+1)+10;
            SCR2D(I+2)=8+SCR2D(I+1)+9;
            SCR3A(I+2)=9+SCR3A(I+1)+8;
            SCR3B(I+2)=10+SCR3B(I+1)+7;
            SCR3C(I+2)=11+SCR3C(I+1)+6;
            SCR3D(I+2)=12+SCR3D(I+1)+5;
            SCR4A(I+2)=13+SCR4A(I+1)+4;
            SCR4B(I+2)=14+SCR4B(I+1)+3;
            SCR4C(I+2)=15+SCR4C(I+1)+2;
            SCR4D(I+2)=16+SCR4D(I+1)+1;
         }
         if (I <= 97)
         {
            SCR1A(I+3)=1+SCR1A(I+2)+16;
            SCR1B(I+3)=2+SCR1B(I+2)+15;
            SCR1C(I+3)=3+SCR1C(I+2)+14;
            SCR1D(I+3)=4+SCR1D(I+2)+13;
            SCR2A(I+3)=5+SCR2A(I+2)+12;
            SCR2B(I+3)=6+SCR2B(I+2)+11;
            SCR2C(I+3)=7+SCR2C(I+2)+10;
            SCR2D(I+3)=8+SCR2D(I+2)+9;
            SCR3A(I+3)=9+SCR3A(I+2)+8;
            SCR3B(I+3)=10+SCR3B(I+2)+7;
            SCR3C(I+3)=11+SCR3C(I+2)+6;
            SCR3D(I+3)=12+SCR3D(I+2)+5;
            SCR4A(I+3)=13+SCR4A(I+2)+4;
            SCR4B(I+3)=14+SCR4B(I+2)+3;
            SCR4C(I+3)=15+SCR4C(I+2)+2;
            SCR4D(I+3)=16+SCR4D(I)+1;
         }
       }
 LBL_10:;
   }
   printf(" *** PATTERN3111 LABEL  20 ***\n");
   for(I=1;I<=10;I++)
   {
      SCR1A(I)=SCR1D(10)+SCR1D(10)-(SCR1D(10)*SCR1D(10)+SCR1A(I));
      SCR1B(I)=SCR1D(I)+SCR1D(10)+pow(SCR1C(I),SCR1D(10));
      SCR1C(I)=-SCR1D(10)+SCR1B(I)+SCR1C(I);
      SCR1D(I)=SCR1C(I)+SCR1D(I)+SCR1D(10)+SCR1D(100);
 LBL_20:;
   }
   printf(" *** PATTERN3111 LABEL  30 ***\n");
   for(I=10;I<=30;I++)
   {
      if (I >  20)
      {
         SCR1A(I)=SCR1D(30)+SCR1D(30)+SCR1D(30)+SCR1D(30);
         SCR1B(I)=SCR1A(I)+SCR1B(I)+SCR1D(30);
         SCR1C(I)=SCR1B(I)+SCR1C(I)+SCR1D(30);
         SCR1D(I)=SCR1C(I)+SCR1D(I)+SCR1D(30);
      }
 LBL_30:;
   }
   printf(" *** PATTERN3111 LABEL  40 ***\n");
   for(I=10;I<=30;I++)
   {
      if (SCR2B(1) >  0)
      {
         SCR1A(I)=SCR1A(30)+SCR1D(30)+SCR1D(30)+SCR1D(30);
         SCR1A(I)=SCR1A(I)+SCR1B(I)+SCR1D(30);
         SCR1A(I)=SCR1A(I)+SCR1C(I)+SCR1D(30);
         SCR1D(I)=SCR1C(I)+SCR1D(I)+SCR1D(30)+SCR1D(30)+SCR1D(9);
      }
 LBL_40:;
   }
   printf(" *** PATTERN3111 LABEL  50 ***\n");
   for(I=10;I<=30;I++)
   {
      if (I >  20)
      {
         SCR2A(I)=SCR2D(30)+SCR2D(30)+SCR2D(30)+SCR2D(30);
         SCR2B(I)=SCR2A(I)+SCR2B(I)+SCR2D(30)+SCR2D(30);
         SCR2C(I)=SCR2B(I)+SCR2C(I)+SCR2D(30)+SCR2D(30);
         SCR2D(I)=SCR2C(I)+SCR2D(I)+SCR2D(30);
      }
      else
      {
         SCR3A(I)=SCR3D(30)+SCR3D(30)+SCR3C(30)+SCR3D(30);
         SCR3B(I)=SCR3A(I)+SCR3B(I);
         SCR3C(I)=SCR3B(I)+SCR3C(I);
         SCR3D(I)=SCR3C(I)+SCR3D(I)+SCR3D(30);
      }
 LBL_50:;
   }
   printf(" *** PATTERN3111 LABEL  60 ***\n");
   for(I=10;I<=30;I+=2)
   {
      if (SCR1A(100) <  1000000)
      {
         SCR4A(I)=SCR4D(30)+SCR4D(30)+SCR4D(30)+SCR4D(30);
         SCR4B(I)=SCR4A(I)+SCR4B(I);
         SCR4C(I)=SCR4B(I)+SCR4C(I);
         SCR4D(I)=SCR4C(I)+SCR4D(I);
      }
      else
      {
         SCR4A(I)=SCR4D(30)+SCR4D(30)+SCR4D(30)+SCR4D(30);
         SCR4B(I)=SCR4A(I)+SCR4B(I);
         SCR4C(I)=SCR4B(I)+SCR4C(I)+SCR4D(30);
         SCR4D(I)=SCR4C(I)+SCR4D(I)+SCR4D(30);
      }
 LBL_60:;
   }
   for(i=1;i<=100;i++){
      printf(" %g %g %g %g   ",SCR1A(i),SCR1B(i),SCR1C(i),SCR1D(i));
      printf(" %g %g %g %g \n",SCR2A(i),SCR2B(i),SCR2C(i),SCR2D(i));
      printf(" %g %g %g %g   ",SCR3A(i),SCR3B(i),SCR3C(i),SCR3D(i));
      printf(" %g %g %g %g \n",SCR4A(i),SCR4B(i),SCR4C(i),SCR4D(i));
   }
exit (0);
  }
