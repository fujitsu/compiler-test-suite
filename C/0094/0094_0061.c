#include <stdio.h>
int main( ) {
  long double f1( ),f2( ),f3( ),f4( ),f5( ),f6( ),f7( ),f8( ),f9( ),f10( );
  long double f11( ),f12( ),f13( ),f14( ),f15( ),f16( ),f17( ),f18( ),f19( ),f20( );
  long double subx( );
    volatile long double result;
    volatile long double result0;
    volatile long double result1;
    volatile long double result2;
    volatile long double result3;
    volatile long double result4;
    volatile long double result5;
    volatile long double result6;
    volatile long double result7;
    volatile long double result8;
    volatile long double result9;
 long  i,j;
  static long double (*sub[ ])( )={f1,f2,f3,f4,f5,f6,f7,f8,f9,f10
                          ,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20};
  for (i=0; i<=10;i++) {
  result=sub[i](result1=
           sub[i+1](result2=
             sub[i+2](result3=
               sub[i+3](result4=
                 sub[i+4](result5=
                   sub[i+5](result6=
                     sub[i+6](result7=
                       sub[i+7](result8=
                         sub[i+8](result9=
                           sub[i+9](1.0L)
         )))))))));
    if (sub[i](result)==2048.0L
     && 1022.0L == (result0=result1 + result2 + result3 + result4 + result5
                         + result6 + result7 + result8 + result9))
      printf ("** (%d) ** OK\n",(int)(i+1));
    else
      printf ("** (%d) ** NG result=%d result0=%d\n"
              ,(int)(i+1),result,result0);
  }
  for (i=0; i<=10;i++) {
    result=subx(result0=sub[i]((long double)i)
               ,result1=sub[i+1]((long double)i)
               ,result2=sub[i+2]((long double)i)
               ,result3=sub[i+3]((long double)i)
               ,result4=sub[i+4]((long double)i)
               ,result5=sub[i+5]((long double)i)
               ,result6=sub[i+6]((long double)i)
               ,result7=sub[i+7]((long double)i)
               ,result8=sub[i+8]((long double)i)
               ,result9=sub[i+9]((long double)i));
    if (result==((long double)i*20.0L)
     && result==(result0 + result1 + result2 + result3 + result4 + result5
               + result6 + result7 + result8 + result9))
      printf ("** (%d) ** OK\n",(int)(i+12));
    else
      printf ("** (%d) ** NG result=%d\n",(int)(i+12),result);
  }
}
long double f10(p)   volatile long double p;{return p+p;}
long double f9(p) long double p;{return p+p;}
long double f8(p) long double p;{return p+p;}
long double f7(p) long double p;{return p+p;}
long double f6(p) long double p;{return p+p;}
long double f5(p) long double p;{return p+p;}
long double f4(p) long double p;{return p+p;}
long double f3(p) long double p;{return p+p;}
long double f2(p) long double p;{return p+p;}
long double f1(p) long double p;{return p+p;}
long double f20(p) long double p;{return p+p;}
long double f19(p) long double p;{return p+p;}
long double f18(p) long double p;{return p+p;}
long double f17(p) long double p;{return p+p;}
long double f16(p) long double p;{return p+p;}
long double f15(p) long double p;{return p+p;}
long double f14(p) long double p;{return p+p;}
long double f13(p) long double p;{return p+p;}
long double f12(p) long double p;{return p+p;}
long double f11(p) long double p;{return p+p;}
long double subx(p0,p1,p2,p3,p4,p5,p6,p7,p8,p9)
     volatile long double p0,p1,p2,p3,p4,p5,p6,p7,p8,p9;{
return p0+p1+p2+p3+p4+p5+p6+p7+p8+p9;
}
