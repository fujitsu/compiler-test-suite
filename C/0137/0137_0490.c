#include <stdlib.h>
#include <stdio.h>
#include <math.h>
signed        char ai1=4;
signed  short int  ai2=4;
signed        int  ai4=4;
signed  long long      int  ai8=4;
 unsigned       char au1=4;
 unsigned short int  au2=4;
 unsigned       int  au4=4;
 unsigned long long  int  au8=4;
int main( ) {
signed        char i1;
signed  short int  i2;
signed        int  i4;
signed long long   int  i8;
 unsigned       char u1;
 unsigned short int  u2;
 unsigned       int  u4;
 unsigned long long  int  u8;
signed        char subi1( );
signed  short int  subi2( );
signed        int  subi4( );
signed long long int  subi8( );
 unsigned       char subu1( );
 unsigned short int  subu2( );
 unsigned       int  subu4( );
 unsigned  long long int  subu8( );
          i2=subi2(2);
          i4=subi4(2);
          i8=subi8(2);
          u1=subu1(2);
          u2=subu2(2);
          u4=subu4(2);
          u8=subu8(2);
 i1 = i2;
          if (i1==ai1) printf("**dpmk2008-(01)** OK\n");
          else         printf("**dpmk2008-(01)** NG i1=%d\n",i1);
 i1 = i4; 
          if (i1==ai1) printf("**dpmk2008-(02)** OK\n");
          else         printf("**dpmk2008-(02)** NG i1=%d\n",i1);
 i1 = i8; 
          if (i1==ai1) printf("**dpmk2008-(02)** OK\n");
          else         printf("**dpmk2008-(02)** NG i1=%d\n",i1);
 i1 = u1; 
          if (i1==ai1) printf("**dpmk2008-(03)** OK\n");
          else         printf("**dpmk2008-(03)** NG i1=%d\n",i1);
 i1 = u2;
          if (i1==ai1) printf("**dpmk2008-(04)** OK\n");
          else         printf("**dpmk2008-(04)** NG i1=%d\n",i1);
 i1 = u4;
          if (i1==ai1) printf("**dpmk2008-(05)** OK\n");
          else         printf("**dpmk2008-(05)** NG i1=%d\n",i1);
 i1 = u8;
          if (i1==ai1) printf("**dpmk2008-(05)** OK\n");
          else         printf("**dpmk2008-(05)** NG i1=%d\n",i1);
       
 i2 = i1;
          if (i2==ai2) printf("**dpmk2008-(06)** OK\n");
          else         printf("**dpmk2008-(06)** NG i2=%d\n",i2);
 i2 = i4; 
          if (i2==ai2) printf("**dpmk2008-(07)** OK\n");
          else         printf("**dpmk2008-(07)** NG i2=%d\n",i2);
 i2 = i8; 
          if (i2==ai2) printf("**dpmk2008-(07)** OK\n");
          else         printf("**dpmk2008-(07)** NG i2=%d\n",i2);
 i2 = u1;
          if (i2==ai2) printf("**dpmk2008-(08)** OK\n");
          else         printf("**dpmk2008-(08)** NG i2=%d\n",i2);
 i2 = u2; 
          if (i2==ai2) printf("**dpmk2008-(09)** OK\n");
          else         printf("**dpmk2008-(09)** NG i2=%d\n",i2);
 i2 = u4;
          if (i2==ai2) printf("**dpmk2008-(10)** OK\n");
          else         printf("**dpmk2008-(10)** NG i2=%d\n",i2);
 i2 = u8;
          if (i2==ai2) printf("**dpmk2008-(10)** OK\n");
          else         printf("**dpmk2008-(10)** NG i2=%d\n",i2);
       
 i4 = i1; 
          if (i4==ai4) printf("**dpmk2008-(11)** OK\n");
          else         printf("**dpmk2008-(11)** NG i4=%d\n",i4);
 i4 = i2; 
          if (i4==ai4) printf("**dpmk2008-(12)** OK\n");
          else         printf("**dpmk2008-(12)** NG i4=%d\n",i4);
 i4 = i8; 
          if (i4==ai4) printf("**dpmk2008-(12)** OK\n");
          else         printf("**dpmk2008-(12)** NG i4=%d\n",i4);
 i4 = u1; 
          if (i4==ai4) printf("**dpmk2008-(13)** OK\n");
          else         printf("**dpmk2008-(13)** NG i4=%d\n",i4);
 i4 = u2;
          if (i4==ai4) printf("**dpmk2008-(14)** OK\n");
          else         printf("**dpmk2008-(14)** NG i4=%d\n",i4);
 i4 = u4; 
          if (i4==ai4) printf("**dpmk2008-(15)** OK\n");
          else         printf("**dpmk2008-(15)** NG i4=%d\n",i4);
 i4 = u8; 
          if (i4==ai4) printf("**dpmk2008-(15)** OK\n");
          else         printf("**dpmk2008-(15)** NG i4=%d\n",i4);
       
 u1 = i1;
          if (u1==au1) printf("**dpmk2008-(16)** OK\n");
          else         printf("**dpmk2008-(16)** NG u1=%d\n",u1);
 u1 = i2; 
          if (u1==au1) printf("**dpmk2008-(17)** OK\n");
          else         printf("**dpmk2008-(17)** NG u1=%d\n",u1);
 u1 = i4; 
          if (u1==au1) printf("**dpmk2008-(18)** OK\n");
          else         printf("**dpmk2008-(18)** NG u1=%d\n",u1);
 u1 = i8; 
          if (u1==au1) printf("**dpmk2008-(18)** OK\n");
          else         printf("**dpmk2008-(18)** NG u1=%d\n",u1);
 u1 = u2; 
          if (u1==au1) printf("**dpmk2008-(19)** OK\n");
          else         printf("**dpmk2008-(19)** NG u1=%d\n",u1);
 u1 = u4; 
          if (u1==au1) printf("**dpmk2008-(20)** OK\n");
          else         printf("**dpmk2008-(20)** NG u1=%d\n",u1);
 u1 = u8; 
          if (u1==au1) printf("**dpmk2008-(20)** OK\n");
          else         printf("**dpmk2008-(20)** NG u1=%d\n",u1);
       
 u2 = i1;
          if (u2==au2) printf("**dpmk2008-(21)** OK\n");
          else         printf("**dpmk2008-(21)** NG u2=%d\n",u2);
 u2 = i2; 
          if (u2==au2) printf("**dpmk2008-(22)** OK\n");
          else         printf("**dpmk2008-(22)** NG u2=%d\n",u2);
 u2 = i4; 
          if (u2==au2) printf("**dpmk2008-(23)** OK\n");
          else         printf("**dpmk2008-(23)** NG u2=%d\n",u2);
 u2 = i8; 
          if (u2==au2) printf("**dpmk2008-(23)** OK\n");
          else         printf("**dpmk2008-(23)** NG u2=%d\n",u2);
 u2 = u1; 
          if (u2==au2) printf("**dpmk2008-(24)** OK\n");
          else         printf("**dpmk2008-(24)** NG u2=%d\n",u2);
 u2 = u4; 
          if (u2==au2) printf("**dpmk2008-(25)** OK\n");
          else         printf("**dpmk2008-(25)** NG u2=%d\n",u2);
 u2 = u8; 
          if (u2==au2) printf("**dpmk2008-(25)** OK\n");
          else         printf("**dpmk2008-(25)** NG u2=%d\n",u2);
       
 u4 = i1; 
          if (u4==au4) printf("**dpmk2008-(26)** OK\n");
          else         printf("**dpmk2008-(26)** NG u4=%d\n",u4);
 u4 = i2; 
          if (u4==au4) printf("**dpmk2008-(27)** OK\n");
          else         printf("**dpmk2008-(27)** NG u4=%d\n",u4);
 u4 = i4; 
          if (u4==au4) printf("**dpmk2008-(28)** OK\n");
          else         printf("**dpmk2008-(28)** NG u4=%d\n",u4);
 u4 = i8; 
          if (u4==au4) printf("**dpmk2008-(28)** OK\n");
          else         printf("**dpmk2008-(28)** NG u4=%d\n",u4);
 u4 = u1; 
          if (u4==au4) printf("**dpmk2008-(29)** OK\n");
          else         printf("**dpmk2008-(29)** NG u4=%d\n",u4);
 u4 = u2;
          if (u4==au4) printf("**dpmk2008-(30)** OK\n");
          else         printf("**dpmk2008-(30)** NG u4=%d\n",u4);
 u4 = u8;
          if (u4==au4) printf("**dpmk2008-(30)** OK\n");
          else         printf("**dpmk2008-(30)** NG u4=%d\n",u4);
 i8 = i1; 
          if (i8==ai8) printf("**dpmk2008-(27)** OK\n");
          else         printf("**dpmk2008-(27)** NG i8=%d\n",i8);
 i8 = i2; 
          if (i8==ai8) printf("**dpmk2008-(27)** OK\n");
          else         printf("**dpmk2008-(27)** NG i8=%d\n",i8);
 i8 = i4; 
          if (i8==ai8) printf("**dpmk2008-(28)** OK\n");
          else         printf("**dpmk2008-(28)** NG i8=%d\n",i8);
 i8 = u1; 
          if (i8==ai8) printf("**dpmk2008-(29)** OK\n");
          else         printf("**dpmk2008-(29)** NG i8=%d\n",i8);
 i8 = u2;
          if (i4==ai8) printf("**dpmk2008-(30)** OK\n");
          else         printf("**dpmk2008-(30)** NG i8=%d\n",i8);
 i8 = u4;
          if (i4==ai8) printf("**dpmk2008-(30)** OK\n");
          else         printf("**dpmk2008-(30)** NG i8=%d\n",i8);
 i8 = u8; 
          if (i8==ai8) printf("**dpmk2008-(28)** OK\n");
          else         printf("**dpmk2008-(28)** NG i8=%d\n",i8);
 u8 = i1; 
          if (u8==au8) printf("**dpmk2008-(27)** OK\n");
          else         printf("**dpmk2008-(27)** NG u8=%d\n",u8);
 u8 = i2; 
          if (u8==au8) printf("**dpmk2008-(27)** OK\n");
          else         printf("**dpmk2008-(27)** NG u8=%d\n",u8);
 u8 = i4; 
          if (u8==au8) printf("**dpmk2008-(28)** OK\n");
          else         printf("**dpmk2008-(28)** NG u8=%d\n",u8);
 u8 = i8; 
          if (u8==au8) printf("**dpmk2008-(28)** OK\n");
          else         printf("**dpmk2008-(28)** NG u8=%d\n",u8);
 u8 = u1; 
          if (u8==au8) printf("**dpmk2008-(29)** OK\n");
          else         printf("**dpmk2008-(29)** NG u8=%d\n",u8);
 u8 = u2;
          if (u4==au8) printf("**dpmk2008-(30)** OK\n");
          else         printf("**dpmk2008-(30)** NG u8=%d\n",u8);
 u8 = u4;
          if (u4==au8) printf("**dpmk2008-(30)** OK\n");
          else         printf("**dpmk2008-(30)** NG u8=%d\n",u8);
exit (0);
}
signed        char subi1(p) int p;{
  return p+p;
}
signed  short int  subi2(p) int p;{
  return p+p;
}
signed        int  subi4(p) int p;{
  return p+p;
}
signed long long  int  subi8(p)  int p;{
  return p+p;
}
unsigned       char subu1(p) int p;{
  return p+p;
}
unsigned short int  subu2(p) int p;{
  return p+p;
}
unsigned       int  subu4(p) int p;{
  return p+p;
}
unsigned long long       int  subu8(p) int p;{
  return p+p;
}
