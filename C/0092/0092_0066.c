#include <stdio.h>

float       ar4;
double      ar8;
#ifdef NO_LONG_DOUBLE
double ar16;
#else
long double ar16;
#endif
       char ai1=4;
 short int  ai2=4;
       int  ai4=4;
 unsigned       char au1=4;
 unsigned short int  au2=4;
 unsigned       int  au4=4;
int main( ) {
      float       r4;
  float       subr4( );
  double      r8;
  double      subr8( );
#ifdef NO_LONG_DOUBLE
  double r16;
  double subr16( );
#else
  long double r16;
  long double subr16( );
#endif
        char i1;
  short int  i2;
        int  i4;
 unsigned       char u1;
 unsigned short int  u2;
 unsigned       int  u4;
        char subi1( );
 short  int  subi2( );
        int  subi4( );
 unsigned       char subu1( );
 unsigned short int  subu2( );
 unsigned       int  subu4( );
       ar4=4.0e+0;
       ar8=0.4e+1;
       ar16=40e-1;
          i1=subi1(2);
          i2=subi2(2);
          i4=subi4(2);
          u1=subu1(2);
          u2=subu2(2);
          u4=subu4(2);
          r8=subr8(2.0e+00);
#ifdef NO_LONG_DOUBLE
         r16=subr16((double)0.2e+1);
#else
         r16=subr16((long double)0.2e+1);
#endif
 r4 = r8;
          if (r4==ar4) printf("**(01)** OK\n");
          else         printf("**(01)** NG r4=%d\n",r4);
 r4 = r16; 
          if (r4==ar4) printf("**(02)** OK\n");
          else         printf("**(02)** NG r4=%d\n",r4);
 r8 = r4;
          if (r8==ar8) printf("**(03)** OK\n");
          else         printf("**(03)** NG r8=%d\n",r8);
 r8 = r16; 
          if (r8==ar8) printf("**(04)** OK\n");
          else         printf("**(04)** NG r8=%d\n",r8);
 r16 = r4; 
          if (r16==ar16) printf("**(05)** OK\n");
          else           printf("**(05)** NG r16=%d\n",r16);
 r16 = r8; 
          if (r16==ar16) printf("**(06)** OK\n");
          else           printf("**(06)** NG r16=%d\n",r16);
 r4 = i1;
          if (r4==ar4) printf("**(07)** OK\n");
          else         printf("**(07)** NG r4=%e\n",r4);
 r4 = i2;
          if (r4==ar4) printf("**(08)** OK\n");
          else         printf("**(08)** NG r4=%e\n",r4);
 r4 = i4; 
          if (r4==ar4) printf("**(09)** OK\n");
          else         printf("**(09)** NG r4=%e\n",r4);
 r4 = u1; 
          if (r4==ar4) printf("**(10)** OK\n");
          else         printf("**(10)** NG r4=%e\n",r4);
 r4 = u2;
          if (r4==ar4) printf("**(11)** OK\n");
          else         printf("**(11)** NG r4=%e\n",r4);
 r4 = i4; 
          if (r4==ar4) printf("**(12)** OK\n");
          else         printf("**(12)** NG r4=%e\n",r4);
 r8 = i1;
          if (r8==ar8) printf("**(13)** OK\n");
          else         printf("**(13)** NG r8=%e\n",r8);
 r8 = i2;
          if (r8==ar8) printf("**(14)** OK\n");
          else         printf("**(14)** NG r8=%e\n",r8);
 r8 = i4; 
          if (r8==ar8) printf("**(15)** OK\n");
          else         printf("**(15)** NG r8=%e\n",r8);
 r8 = u1; 
          if (r8==ar8) printf("**(16)** OK\n");
          else         printf("**(16)** NG r8=%e\n",r8);
 r8 = u2;
          if (r8==ar8) printf("**(17)** OK\n");
          else         printf("**(17)** NG r8=%e\n",r8);
 r8 = u4;
          if (r8==ar8) printf("**(18)** OK\n");
          else         printf("**(18)** NG r8=%e\n",r8);
 r16 = i1;
          if (r16==ar16) printf("**(19)** OK\n");
          else           printf("**(19)** NG r16=%e\n",r16);
 r16 = i2;
          if (r16==ar16) printf("**(20)** OK\n");
          else           printf("**(20)** NG r16=%e\n",r16);
 r16 = i4; 
          if (r16==ar16) printf("**(21)** OK\n");
          else           printf("**(21)** NG r16=%e\n",r16);
 r16 = u1; 
          if (r16==ar16) printf("**(22)** OK\n");
          else           printf("**(22)** NG r16=%e\n",r16);
 r16 = u2;
          if (r16==ar16) printf("**(23)** OK\n");
          else           printf("**(23)** NG r16=%e\n",r16);
 r16 = u4;
          if (r16==ar16) printf("**(24)** OK\n");
          else           printf("**(24)** NG r16=%e\n",r16);
 i1 = r4;
          if (i1==ar4) printf("**(25)** OK\n");
          else         printf("**(25)** NG i1=%d\n",i1);
 i2 = r4;
          if (i2==ar4) printf("**(26)** OK\n");
          else         printf("**(26)** NG i2=%d\n",i2);
 i4 = r4; 
          if (i4==ar4) printf("**(27)** OK\n");
          else         printf("**(27)** NG i4=%d\n",i4);
 u1 = r4; 
          if (u1==ar4) printf("**(28)** OK\n");
          else         printf("**(28)** NG u1=%d\n",u1);
 u2 = r4;
          if (u2==ar4) printf("**(29)** OK\n");
          else         printf("**(29)** NG u2=%d\n",u2);
 u4 = r4;
          if (u4==ar4) printf("**(30)** OK\n");
          else         printf("**(30)** NG u4=%d\n",u4);
 i1 = r8;
          if (i1==ar8) printf("**(31)** OK\n");
          else         printf("**(31)** NG i1=%d\n",i1);
 i2 = r8;
          if (i2==ar8) printf("**(32)** OK\n");
          else         printf("**(32)** NG i2=%d\n",i2);
 i4 = r8; 
          if (i4==ar8) printf("**(33)** OK\n");
          else         printf("**(33)** NG i4=%d\n",i4);
 u1 = r8; 
          if (u1==ar8) printf("**(34)** OK\n");
          else         printf("**(34)** NG u1=%d\n",u1);
 u2 = r8;
          if (u2==ar8) printf("**(35)** OK\n");
          else         printf("**(35)** NG u2=%d\n",u2);
 u4 = r8;
          if (u4==ar8) printf("**(36)** OK\n");
          else         printf("**(36)** NG u4=%d\n",u4);
 i1 = r16;
          if (i1==ar16) printf("**(37)** OK\n");
          else          printf("**(37)** NG i1=%d\n",i1);
 i2 = r16;
          if (i2==ar16) printf("**(38)** OK\n");
          else          printf("**(38)** NG i2=%d\n",i2);
 i4 = r16; 
          if (i4==ar16) printf("**(39)** OK\n");
          else          printf("**(39)** NG i4=%d\n",i4);
 u1 = r16; 
          if (u1==ar16) printf("**(40)** OK\n");
          else          printf("**(40)** NG u1=%d\n",u1);
 u2 = r16;
          if (u2==ar16) printf("**(41)** OK\n");
          else          printf("**(41)** NG u2=%d\n",u2);
 u4 = r16;
          if (u4==ar16) printf("**(42)** OK\n");
          else          printf("**(42)** NG u4=%d\n",u4);
}
double subr8(p)  double p;{
  return p+p;
}
#ifdef NO_LONG_DOUBLE
double subr16(p) double p;{
#else
long double subr16(p) long double p;{
#endif
  return p+p;
}
        char subi1(p) int p;{
  return p+p;
}
  short int  subi2(p) int p;{
  return p+p;
}
        int  subi4(p) int p;{
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
