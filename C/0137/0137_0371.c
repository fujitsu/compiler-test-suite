#include <stdlib.h>
#include <math.h>

#include <stdio.h>
int main( ) {
union {
  unsigned int b1:32;
  unsigned int u4;
} a;
  float r4;
  double r8;
  long  double r16;
  float subf( ),subf2( );
  double subd( ),subd2( );
  long  double subx( ),subx2( );
a.u4=0;
a.b1|=0x7fffffff;
  r4=a.u4;
             if (r4==(float)0x7fffffff)
             printf ("** dpmk2033(01) OK ** r4=%.10g\n",r4);
             else
             printf ("** dpmk2033(01) NG ** r4=%.10g\n",r4);
  r8=a.u4;
             if (r8==(double)0x7fffffff)
             printf ("** dpmk2033(02) OK ** r8=%.10g\n",r8);
             else
             printf ("** dpmk2033(02) NG ** r8=%.10g\n",r8);
  r16=a.u4;
             if (r16==(long double)0x7fffffff)
             printf ("** dpmk2033(03) OK ** r16=%.10g\n",(double)r16);
             else
             printf ("** dpmk2033(03) NG ** r16=%.10g\n",(double)r16);
a.u4=0;
a.b1|=0x80000000;
  r4=a.u4;
             if (r4==(float)0x80000000)
             printf ("** dpmk2033(04) OK ** r4=%.10g\n",r4);
             else
             printf ("** dpmk2033(04) NG ** r4=%.10g\n",r4);
  r8=a.u4;
             if (r8==(double)0x80000000)
             printf ("** dpmk2033(05) OK ** r8=%.10g\n",r8);
             else
             printf ("** dpmk2033(05) NG ** r8=%.10g\n",r8);
  r16=a.u4;
             if (r16==(long double)0x80000000)
             printf ("** dpmk2033(06) OK ** r16=%.10g\n",(double)r16);
             else
             printf ("** dpmk2033(06) NG ** r16=%.10g\n",(double)r16);
  a.u4=subf( );
             if (a.u4==0x80000000)
             printf ("** dpmk2033(07) OK ** a.u4=%x\n",a.u4);
             else
             printf ("** dpmk2033(07) NG ** a.u4=%x\n",a.u4);
  a.u4=subd( );
             if (a.u4==0x80000000)
             printf ("** dpmk2033(08) OK ** a.u4=%x\n",a.u4);
             else
             printf ("** dpmk2033(08) NG ** a.u4=%x\n",a.u4);
  a.u4=subx( );
             if (a.u4==0x80000000)
             printf ("** dpmk2033(09) OK ** a.u4=%x\n",a.u4);
             else
             printf ("** dpmk2033(09) NG ** a.u4=%x\n",a.u4);
  a.u4=subf2( );
             if (a.u4==0x80000000)
             printf ("** dpmk2033(10) OK ** a.u4=%x\n",a.u4);
             else
             printf ("** dpmk2033(10) NG ** a.u4=%x\n",a.u4);
  a.u4=subd2( );
             if (a.u4==0x7fffffff)
             printf ("** dpmk2033(11) OK ** a.u4=%x\n",a.u4);
             else
             printf ("** dpmk2033(11) NG ** a.u4=%x\n",a.u4);
  a.u4=subx2( );
             if (a.u4==0x7fffffff)
             printf ("** dpmk2033(12) OK ** a.u4=%x\n",a.u4);
             else
             printf ("** dpmk2033(12) NG ** a.u4=%x\n",a.u4);
exit (0);
}
float subf ( ) { return   (float)0x80000000; }
double subd ( ) { return (double)0x80000000; }
long  double subx ( ) { return (long double)0x80000000; }
float subf2( ) { return   (float)0x7fffffff; }
double subd2( ) { return (double)0x7fffffff; }
long  double subx2( ) { return (long double)0x7fffffff; }
