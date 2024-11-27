#include <stdio.h>

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
signed        char i1;
signed  short int  i2;
signed        int  i4;
 unsigned       char u1;
 unsigned short int  u2;
 unsigned       int  u4;
          r4=subr4(4.4444e+1);
          r8=subr8(4.999999e+1);
#ifdef NO_LONG_DOUBLE
         r16=subr16((double)0.000249999e+4);
#else
         r16=subr16((long double)0.000249999e+4);
#endif
 i1 = r4;
          if (i1==88) printf("**(01)** OK\n");
          else         printf("**(01)** NG i1=%d\n",i1);
 i2 = r4;
          if (i2==88) printf("**(02)** OK\n");
          else         printf("**(02)** NG i2=%d\n",i2);
 i4 = r4; 
          if (i4==88) printf("**(03)** OK\n");
          else         printf("**(03)** NG i4=%d\n",i4);
 u1 = r4; 
          if (u1==88) printf("**(04)** OK\n");
          else         printf("**(04)** NG u1=%d\n",u1);
 u2 = r4;
          if (u2==88) printf("**(05)** OK\n");
          else         printf("**(05)** NG u2=%d\n",u2);
 u4 = r4;
          if (u4==88) printf("**(06)** OK\n");
          else         printf("**(06)** NG u4=%d\n",u4);
 i1 = r8;
          if (i1==99) printf("**(07)** OK\n");
          else         printf("**(07)** NG i1=%d\n",i1);
 i2 = r8;
          if (i2==99) printf("**(08)** OK\n");
          else         printf("**(08)** NG i2=%d\n",i2);
 i4 = r8; 
          if (i4==99) printf("**(09)** OK\n");
          else         printf("**(09)** NG i4=%d\n",i4);
 u1 = r8; 
          if (u1==99) printf("**(10)** OK\n");
          else         printf("**(10)** NG u1=%d\n",u1);
 u2 = r8;
          if (u2==99) printf("**(11)** OK\n");
          else         printf("**(11)** NG u2=%d\n",u2);
 u4 = r8;
          if (u4==99) printf("**(12)** OK\n");
          else         printf("**(12)** NG u4=%d\n",u4);
 i1 = r16;
          if (i1==4) printf("**(13)** OK\n");
          else          printf("**(13)** NG i1=%d\n",i1);
 i2 = r16;
          if (i2==4) printf("**(14)** OK\n");
          else          printf("**(14)** NG i2=%d\n",i2);
 i4 = r16; 
          if (i4==4) printf("**(15)** OK\n");
          else          printf("**(15)** NG i4=%d\n",i4);
 u1 = r16; 
          if (u1==4) printf("**(16)** OK\n");
          else          printf("**(16)** NG u1=%d\n",u1);
 u2 = r16;
          if (u2==4) printf("**(17)** OK\n");
          else          printf("**(17)** NG u2=%d\n",u2);
 u4 = r16;
          if (u4==4) printf("**(18)** OK\n");
          else          printf("**(18)** NG u4=%d\n",u4);
}
float subr4(p)  float p;{
  return p+p;
}
double subr8(p)  double p;{
  return p+p;
}
#ifdef NO_LONG_DOUBLE
double subr16(p) long double p;{
#else
long double subr16(p) long double p;{
#endif
  return p+p;
}
