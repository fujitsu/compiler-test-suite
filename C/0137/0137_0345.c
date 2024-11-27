#include <stdlib.h>
#include <math.h>
#include <stdio.h>
    signed         char i1='a';  
    signed  short  int  i2=0xffff;  
    signed         int  i4=0xffffffff;  
  unsigned         char u1='b';  
  unsigned  short  int  u2=0xffff;  
  unsigned         int  u4=0xffffffff;  
int main( ) {
    signed         char ai1[10];  
    signed  short  int  ai2[10];  
    signed         int  ai4[10];  
  unsigned         char au1[10];  
  unsigned  short  int  au2[10];  
  unsigned         int  au4[10];  
    signed         char *pi1;  
    signed  short  int  *pi2;  
    signed         int  *pi4;  
  unsigned         char *pu1;  
  unsigned  short  int  *pu2;  
  unsigned         int  *pu4;
  struct  a {
      signed         char r_ai1[10];  
  } *si1;
  struct  b {
      signed  short  int  r_ai2[10];  
  } *si2;
  struct  c {
      signed         int  r_ai4[10];  
  } *si4;
  struct d  {
    unsigned         char r_au1[10];  
  } *su1;
  struct  e {
    unsigned  short  int  r_au2[10];  
  } *su2;
  struct  f {
    unsigned         int  r_au4[10];  
  } *su4;
     signed        char pi1_area[sizeof(signed char)];
    signed  short  int  pi2_area[sizeof(signed short int)];
    signed         int  pi4_area[sizeof(signed int)];
  unsigned         char pu1_area[sizeof(unsigned char)];
  unsigned  short  int  pu2_area[sizeof(unsigned short int)];
  unsigned         int  pu4_area[sizeof(unsigned int)];
  struct a              si1_area;
  struct b              si2_area;
  struct c              si4_area;
  struct d              su1_area;
  struct e              su2_area;
  struct f              su4_area;

  int              i;
  ai1[1]        = i1;
                     if (ai1[1]=='a') printf ("** dpmk2003-(01)** OK\n");
                     else             printf ("** dpmk2003-(01)** NG ai1[1]=%c\n",ai1[1]);
                     pi1=pi1_area;
  *pi1          = i1;          
                     if (*pi1=='a')   printf ("** dpmk2003-(02)** OK\n");
                     else             printf ("** dpmk2003-(02)** NG *pi1=%s\n",pi1);
                     si1=&si1_area;
for (i=0;i<10;i++) 
  si1->r_ai1[i] = i1;i=0;  
                     if (si1->r_ai1[i]=='a') printf ("** dpmk2003-(03)** OK\n");
                     else                    printf ("** dpmk2003-(03)** NG si1->r_ai1[i]=%c\n",si1->r_ai1[i]);
  ai2[1]        = i2; 
                     if (ai2[1]==-1) printf ("** dpmk2003-(04)** OK\n");
                     else            printf ("** dpmk2003-(04)** NG ai2[1]=%x\n",ai2[1]);
                     pi2=pi2_area;
  *pi2          =i2 ;         
                     if (*pi2==-1)   printf ("** dpmk2003-(05)** OK\n");
                     else            printf ("** dpmk2003-(05)** NG *pi2=%x\n",*pi2);
                     si2=&si2_area;
for (i=0;i<10;i++) 
  si2->r_ai2[i] = i2;i=0; 
                     if (si2->r_ai2[i]==-1) printf ("** dpmk2003-(06)** OK\n");
                     else                   printf ("** dpmk2003-(06)** NG si2->r_ai2[i]=%x\n",si2->r_ai2[i]);
  ai4[1]        = i4;
                     if (ai4[1]==0xffffffff) printf ("** dpmk2003-(07)** OK\n");
                     else                    printf ("** dpmk2003-(07)** NG ai4[1]=%x\n",ai4[1]);
                     pi4=pi4_area;
  *pi4          = i4;         
                     if (*pi4==0xffffffff)   printf ("** dpmk2003-(08)** OK\n");
                     else                    printf ("** dpmk2003-(08)** NG *pi4=%x\n",pi4);
                     si4=&si4_area;
for (i=0;i<10;i++) 
  si4->r_ai4[i] = i4;i=0; 
                     if (si4->r_ai4[i]==0xffffffff) printf ("** dpmk2003-(09)** OK\n");
                     else                           printf ("** dpmk2003-(09)** NG si4->r_ai4[i]=%x\n",si4->r_ai4[i]);
  au1[1]        = u1; 
                     if (au1[1]=='b') printf ("** dpmk2003-(10)** OK\n");
                     else             printf ("** dpmk2003-(10)** NG au1[1]=%c\n",au1[1]);
                     pu1=pu1_area;
  *pu1          = u1;        
                     if (*pu1=='b')   printf ("** dpmk2003-(11)** OK\n");
                     else             printf ("** dpmk2003-(11)** NG *pu1=%s\n",pu1);
                     su1=&su1_area; 
for (i=0;i<10;i++) 
  su1->r_au1[i] = u1;i=0; 
                     if (su1->r_au1[i]=='b') printf ("** dpmk2003-(12)** OK\n");
                     else                    printf ("** dpmk2003-(12)** NG su1->r_au1[i]=%c\n",su1->r_au1[i]);
  au2[1]        = u2; 
                     if (au2[1]==0xffff) printf ("** dpmk2003-(13)** OK\n");
                     else                printf ("** dpmk2003-(13)** NG au2[1]=%x\n",au2[1]);
                     pu2=pu2_area;
  *pu2          = u2;  if (u2);        
                     if (*pu2==0xffff)   printf ("** dpmk2003-(14)** OK\n");
                     else                printf ("** dpmk2003-(14)** NG *pu2=%x\n",*pu2);
                     su2=&su2_area;
for (i=0;i<10;i++) 
  su2->r_au2[i] = u2;i=0; 
                     if (su2->r_au2[i]==0xffff) printf ("** dpmk2003-(15)** OK\n");
                     else                       printf ("** dpmk2003-(15)** NG su2->r_au2[i]=%x\n",su2->r_au2[i]);
  au4[1]        = u4;
                     if (au4[1]==0xffffffff) printf ("** dpmk2003-(16)** OK\n");
                     else                    printf ("** dpmk2003-(16)** NG au4[1]=%x\n",au4[1]);
                     pu4=pu4_area;
  *pu4          = u4;        
                     if (*pu4==0xffffffff)   printf ("** dpmk2003-(17)** OK\n");
                     else                    printf ("** dpmk2003-(17)** NG *pu4=%x\n",pu4);
                     su4=&su4_area; 
for (i=0;i<10;i++) 
  su4->r_au4[i] = u4;i=0;
                     if (su4->r_au4[i]==0xffffffff) printf ("** dpmk2003-(18)** OK\n");
                     else                           printf ("** dpmk2003-(18)** NG su4->r_au4[i]=%x\n",su4->r_au4[i]);
exit (0);
}  
