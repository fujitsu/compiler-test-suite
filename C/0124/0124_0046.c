#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define VLR1A(i) vlr1a[i-1]
#define VLR1B(i) vlr1b[i-1]
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
 float vlr1a[1024],vlr1b[1024];
 float scr1a[100],scr1b[100],scr1c[100],scr1d[100];
 float scr2a[100],scr2b[100],scr2c[100],scr2d[100];
 float scr3a[100],scr3b[100],scr3c[100],scr3d[100];
 float scr4a[100],scr4b[100],scr4c[100],scr4d[100];
int main()
  {
   long int N=100;
   long int J,I,i,j,KKK;
   for(i=0;i< 1024;i++){
     vlr1a[i]=1.0;
     vlr1b[i]=2.0;
   }
   for(i=0;i< 100;i++){
     scr1a[i]=1;
     scr1b[i]=2;
     scr1c[i]=1;
     scr1d[i]=1502;
     scr2a[i]=1;
     scr2b[i]=2;
     scr2c[i]=1;
     scr2d[i]=1502;
     scr3a[i]=1;
     scr3b[i]=2;
     scr3c[i]=1;
     scr3d[i]=1502;
     scr4a[i]=1;
     scr4b[i]=2;
     scr4c[i]=1;
     scr4d[i]=1502;
   }
   printf(" *** PATTERN3008 ***\n");
   J=1;
   for(I=1;I<=97;I+=2)
   {
      SCR1A(I)  =pow(SCR1A(I+1),J);
      SCR1A(I+1)=pow(SCR1A(I+2),J);
      SCR1B(I)  =pow(SCR1A(I+1),J);
      SCR1B(I+1)=pow(SCR1A(I+2),J);
      SCR1C(I)  =pow(SCR1A(I+1),J);
      SCR1C(I+1)=pow(SCR1A(I+2),J);
      SCR1D(I)  =pow(SCR1A(I+1),J);
      SCR1D(I+1)=pow((J+1),SCR1A(I+2));
   }
   for(J=1;J<=2;J++)
   {
      for(I=1;I<=95;I+=3)
      {
         SCR2A(I)  =SCR1A(I+1)+1;
         SCR2A(I+1)=SCR1A(I+2)+1;
         SCR2A(I+2)=SCR1A(I+3)+1;
         SCR2B(I)  =pow(SCR1A(I+1),J);
         SCR2B(I+1)=pow(SCR1A(I+2),I);
         SCR2B(I+2)=SCR1A(I+2)+1;
         SCR2C(I)  =SCR1A(I+3)+1;
         SCR2C(I+1)=SCR1A(I+2)+1;
         SCR2C(I+2)=SCR1A(I+2)+1;
         SCR2D(I)  =SCR1A(I+3)+1;
         SCR2D(I+1)=SCR1A(I+2)+1;
         SCR2D(I+2)=SCR1A(I+2)+1;
      }
   }
   for(I=1;I<=1024;I++)
   {
      VLR1A(I)=VLR1A(I)+VLR1B(I);
      if (I <= 97)
      {
         SCR3A(I+2)=SCR1A(I+3)+1;
         SCR3A(I+3)=SCR1A(I+3)+1;
         SCR3B(I)  =SCR1A(I+1)+1;
         SCR3B(I+1)=SCR1A(I+2)+1;
         SCR3B(I+2)=SCR1A(I+2)+1;
         SCR3B(I+3)=SCR1A(I+2)+1;
         SCR3C(I)  =SCR1A(I+3)+1;
         SCR3C(I+1)=SCR1A(I+2)+1;
         SCR3C(I+2)=SCR1A(I+2)+1;
         SCR3C(I+3)=SCR1A(I+2)+1;
         SCR3D(I)  =SCR1A(I+3)+1;
         SCR3D(I+1)=SCR1A(I+2)+1;
         SCR3D(I+2)=SCR1A(I+2)+1;
         SCR3D(I+3)=SCR1A(I+2)+1;
      }
   }
   for(I=1;I<=N-4;I++)
   {
      SCR4A(I)  =SCR1A(I+1)+1;
      SCR4A(I+1)=SCR1A(I+2)+1;
      SCR4A(I+2)=SCR1A(I+3)+1;
      SCR4A(I+3)=SCR1A(I+3)+1;
      SCR4A(I+4)=SCR1A(I+3)+1;
      SCR4B(I)  =SCR1A(I+1)+1;
      SCR4B(I+1)=SCR1A(I+2)+1;
      SCR4B(I+2)=SCR1A(I+2)+1;
      SCR4B(I+3)=SCR1A(I+2)+1;
      SCR4B(I+4)=SCR1A(I+2)+1;
      SCR4C(I)  =SCR1A(I+3)+1;
      SCR4C(I+1)=SCR1A(I+2)+1;
      SCR4C(I+2)=SCR1A(I+2)+1;
      SCR4C(I+3)=SCR1A(I+2)+1;
      SCR4C(I+4)=SCR1A(I+2)+1;
      SCR4D(I)  =SCR1A(I+3)+1;
      SCR4D(I+1)=SCR1A(I+2)+1;
      SCR4D(I+2)=SCR1A(I+2)+1;
      SCR4D(I+3)=SCR1A(I+2)+1;
      SCR3D(I+4)=SCR1A(I+2)+1;
   }
   J=1;
   for(KKK=1;KKK<=50;KKK++)
   {
      for(I=1;I<=97;I+=2)
      {
         SCR1A(I)  =pow(SCR1A(I+1),J);
         SCR1A(I+1)=pow(SCR1A(I+2),J);
         SCR1B(I)  =pow(SCR1A(I+1),J);
         SCR1B(I+1)=pow(SCR1A(I+2),J);
         SCR1C(I)  =pow(SCR1A(I+1),J);
         SCR1C(I+1)=pow(SCR1A(I+2),J);
         SCR1D(I)  =pow(SCR1A(I+1),J);
         SCR1D(I+1)=pow((J+1),SCR1A(I+2));
      }
      for(J=1;J<=2;J++)
      {
         for(I=1;I<=97;I+=3)
         {
            SCR2A(I)  =SCR1A(I+1)+1;
            SCR2A(I+1)=SCR1A(I+2)+1;
            SCR2A(I+2)=SCR1A(I+3)+1;
            SCR2B(I)  =pow(SCR1A(I+1),KKK);
            SCR2B(I+1)=pow(SCR1A(I+2),I);
            SCR2B(I+2)=SCR1A(I+2)+1;
            SCR2C(I)  =SCR1A(I+3)+1;
            SCR2C(I+1)=SCR1A(I+2)+1;
            SCR2C(I+2)=SCR1A(I+2)+1;
            SCR2D(I)  =SCR1A(I+3)+1;
            SCR2D(I+1)=SCR1A(I+2)+1;
            SCR2D(I+2)=SCR1A(I+2)+1;
         }
      }
      for(I=1;I<=1024;I++)
      {
         VLR1A(I)=VLR1A(I)+VLR1B(I);
         if (I <= 97)
         {
            SCR3A(I+2)=SCR1A(I+3)+1;
            SCR3A(I+3)=SCR1A(I+3)+1;
            SCR3B(I)  =pow(SCR1A(I+1),KKK);
            SCR3B(I+1)=pow(SCR1A(I+2),I);
            SCR3B(I+2)=pow(SCR1A(I+2),I);
            SCR3B(I+3)=SCR1A(I+2)+1;
            SCR3C(I)  =SCR1A(I+3)+1;
            SCR3C(I+1)=SCR1A(I+2)+1;
            SCR3C(I+2)=SCR1A(I+2)+1;
            SCR3C(I+3)=SCR1A(I+2)+1;
            SCR3D(I)  =pow(SCR1A(I+3),KKK);
            SCR3D(I+1)=SCR1A(I+2)+1;
            SCR3D(I+2)=SCR1A(I+2)+1;
            SCR3D(I+3)=SCR1A(I+2)+1;
         }
      }
      for(I=1;I<=N-4;I++)
      {
         SCR4A(I)  =SCR1A(I+1)+1;
         SCR4A(I+1)=SCR1A(I+2)+1;
         SCR4A(I+2)=pow(SCR1A(I+3),KKK);
         SCR4A(I+3)=pow(SCR1A(I+3),I);
         SCR4A(I+4)=SCR1A(I+3)+1;
         SCR4B(I)  =pow(SCR1A(I+1),KKK);
         SCR4B(I+1)=SCR1A(I+2)+1;
         SCR4B(I+2)=SCR1A(I+2)+1;
         SCR4B(I+3)=SCR1A(I+2)+1;
         SCR4B(I+4)=SCR1A(I+2)+1;
         SCR4C(I)  =SCR1A(I+3)+1;
         SCR4C(I+1)=SCR1A(I+2)+1;
         SCR4C(I+2)=SCR1A(I+2)+1;
         SCR4C(I+3)=SCR1A(I+2)+1;
         SCR4C(I+4)=SCR1A(I+2)+1;
         SCR4D(I)  =SCR1A(I+3)+1;
         SCR4D(I+1)=SCR1A(I+2)+1;
         SCR4D(I+2)=SCR1A(I+2)+1;
         SCR4D(I+3)=SCR1A(I+2)+1;
         SCR3D(I+4)=SCR1A(I+2)+1;
      }
   }
   for(i=1;i<=100;i++){
      printf("SCR1A(%3d)=%6.1f  SCR1B(%3d)=%6.1f  ",
                                   i,SCR1A(i),i,SCR1B(i)) ;
      printf("SCR1C(%3d)=%6.1f  SCR1D(%3d)=%6.1f\n",
                                   i,SCR1C(i),i,SCR1D(i)) ;
      printf("SCR2A(%3d)=%6.1f  SCR2B(%3d)=%6.1f  ",
                                   i,SCR2A(i),i,SCR2B(i)) ;
      printf("SCR2C(%3d)=%6.1f  SCR2D(%3d)=%6.1f\n",
                                   i,SCR2C(i),i,SCR2D(i)) ;
      printf("SCR3A(%3d)=%6.1f  SCR3B(%3d)=%6.1f  ",
                                   i,SCR3A(i),i,SCR3B(i)) ;
      printf("SCR3C(%3d)=%6.1f  SCR3D(%3d)=%6.1f\n",
                                   i,SCR3C(i),i,SCR3D(i)) ;
      printf("SCR4A(%3d)=%6.1f  SCR4B(%3d)=%6.1f  ",
                                   i,SCR4A(i),i,SCR4B(i)) ;
      printf("SCR4C(%3d)=%6.1f  SCR4D(%3d)=%6.1f\n",
                                   i,SCR4C(i),i,SCR4D(i)) ;
   }
   for(i=1;i<=1024;i+=2){
      printf("VLR1A(%4d)=%6.1f  VLR1B(%4d)=%4.1f  ",
                                   i,VLR1A(i),i,VLR1B(i)) ;
      printf("VLR1A(%4d)=%6.1f  VLR1B(%4d)=%4.1f\n",
                                   i+1,VLR1A(i+1),i+1,VLR1B(i+1)) ;
  }
exit (0);
  }
