#include <stdio.h>

signed        char ai1=4;
signed  short int  ai2=4;
signed        int  ai4=4;
 unsigned       char au1=4;
 unsigned short int  au2=4;
 unsigned       int  au4=4;
int main( ) {
signed        char i1;
signed  short int  i2;
signed        int  i4;
 unsigned       char u1;
 unsigned short int  u2;
 unsigned       int  u4;
signed        char subi1( );
signed  short int  subi2( );
signed        int  subi4( );
 unsigned       char subu1( );
 unsigned short int  subu2( );
 unsigned       int  subu4( );
          i2=subi2(2);
          i4=subi4(2);
          u1=subu1(2);
          u2=subu2(2);
          u4=subu4(2);
 i1 = i2;
          if (i1==ai1) printf("**(01)** OK\n");
          else         printf("**(01)** NG i1=%d\n",i1);
 i1 = i4; 
          if (i1==ai1) printf("**(02)** OK\n");
          else         printf("**(02)** NG i1=%d\n",i1);
 i1 = u1; 
          if (i1==ai1) printf("**(03)** OK\n");
          else         printf("**(03)** NG i1=%d\n",i1);
 i1 = u2;
          if (i1==ai1) printf("**(04)** OK\n");
          else         printf("**(04)** NG i1=%d\n",i1);
 i1 = u4;
          if (i1==ai1) printf("**(05)** OK\n");
          else         printf("**(05)** NG i1=%d\n",i1);
       
 i2 = i1;
          if (i2==ai2) printf("**(06)** OK\n");
          else         printf("**(06)** NG i2=%d\n",i2);
 i2 = i4; 
          if (i2==ai2) printf("**(07)** OK\n");
          else         printf("**(07)** NG i2=%d\n",i2);
 i2 = u1;
          if (i2==ai2) printf("**(08)** OK\n");
          else         printf("**(08)** NG i2=%d\n",i2);
 i2 = u2; 
          if (i2==ai2) printf("**(09)** OK\n");
          else         printf("**(09)** NG i2=%d\n",i2);
 i2 = u4;
          if (i2==ai2) printf("**(10)** OK\n");
          else         printf("**(10)** NG i2=%d\n",i2);
       
 i4 = i1; 
          if (i4==ai4) printf("**(11)** OK\n");
          else         printf("**(11)** NG i4=%d\n",i4);
 i4 = i2; 
          if (i4==ai4) printf("**(12)** OK\n");
          else         printf("**(12)** NG i4=%d\n",i4);
 i4 = u1; 
          if (i4==ai4) printf("**(13)** OK\n");
          else         printf("**(13)** NG i4=%d\n",i4);
 i4 = u2;
          if (i4==ai4) printf("**(14)** OK\n");
          else         printf("**(14)** NG i4=%d\n",i4);
 i4 = u4; 
          if (i4==ai4) printf("**(15)** OK\n");
          else         printf("**(15)** NG i4=%d\n",i4);
       
 u1 = i1;
          if (u1==au1) printf("**(16)** OK\n");
          else         printf("**(16)** NG u1=%d\n",u1);
 u1 = i2; 
          if (u1==au1) printf("**(17)** OK\n");
          else         printf("**(17)** NG u1=%d\n",u1);
 u1 = i4; 
          if (u1==au1) printf("**(18)** OK\n");
          else         printf("**(18)** NG u1=%d\n",u1);
 u1 = u2; 
          if (u1==au1) printf("**(19)** OK\n");
          else         printf("**(19)** NG u1=%d\n",u1);
 u1 = u4; 
          if (u1==au1) printf("**(20)** OK\n");
          else         printf("**(20)** NG u1=%d\n",u1);
       
 u2 = i1;
          if (u2==au2) printf("**(21)** OK\n");
          else         printf("**(21)** NG u2=%d\n",u2);
 u2 = i2; 
          if (u2==au2) printf("**(22)** OK\n");
          else         printf("**(22)** NG u2=%d\n",u2);
 u2 = i4; 
          if (u2==au2) printf("**(23)** OK\n");
          else         printf("**(23)** NG u2=%d\n",u2);
 u2 = u1; 
          if (u2==au2) printf("**(24)** OK\n");
          else         printf("**(24)** NG u2=%d\n",u2);
 u2 = u4; 
          if (u2==au2) printf("**(25)** OK\n");
          else         printf("**(25)** NG u2=%d\n",u2);
       
 u4 = i1; 
          if (u4==au4) printf("**(26)** OK\n");
          else         printf("**(26)** NG u4=%d\n",u4);
 u4 = i2; 
          if (u4==au4) printf("**(27)** OK\n");
          else         printf("**(27)** NG u4=%d\n",u4);
 u4 = i4; 
          if (u4==au4) printf("**(28)** OK\n");
          else         printf("**(28)** NG u4=%d\n",u4);
 u4 = u1; 
          if (u4==au4) printf("**(29)** OK\n");
          else         printf("**(29)** NG u4=%d\n",u4);
 u4 = u2;
          if (u4==au4) printf("**(30)** OK\n");
          else         printf("**(30)** NG u4=%d\n",u4);
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
unsigned       char subu1(p) int p;{
  return p+p;
}
unsigned short int  subu2(p) int p;{
  return p+p;
}
unsigned       int  subu4(p) int p;{
  return p+p;
}
