#include <stdlib.h>
#include <math.h>
#include <stdio.h>  
long int result;
  long int result0;
  long int result1;
  long int result2;
  long int result3;
  long int result4;
  long int result5;
  long int result6;
  long int result7;
  long int result8;
  long int result9;
  int j;
int main( ) {
  long int i,subx( );
  long int f1( ),f2( ),f3( ),f4( ),f5( ),f6( ),f7( ),f8( ),f9( ),f10( );
  long int f11( ),f12( ),f13( ),f14( ),f15( ),f16( ),f17( ),f18( ),f19( ),f20( );
  static long int (*sub[ ])( )={f1,f2,f3,f4,f5,f6,f7,f8,f9,f10
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
                           sub[i+9](1)
         )))))))));
    if (sub[i](result)==2048
     && 1022 == (result0=result1 + result2 + result3 + result4 + result5
                         + result6 + result7 + result8 + result9))
      printf ("** (%d) ** OK\n",(int)(i+1));
    else
      printf ("** (%d) ** NG result=%d result0=%d\n"
              ,(int)(i+1),result,result0);
  }
  for (i=0; i<=10;i++) {
    result=subx(result0=sub[i](i)
               ,result1=sub[i+1](i)
               ,result2=sub[i+2](i)
               ,result3=sub[i+3](i)
               ,result4=sub[i+4](i)
               ,result5=sub[i+5](i)
               ,result6=sub[i+6](i)
               ,result7=sub[i+7](i)
               ,result8=sub[i+8](i)
               ,result9=sub[i+9](i));
 

    if (result==(i*20)
     && result==(result0 + result1 + result2 + result3 + result4 + result5
               + result6 + result7 + result8 + result9))
      printf ("** (%d) ** OK\n",(int)(i+12));
    else
      printf ("** (%d) ** NG result=%d\n",(int)(i+12),result);
  }
exit (0);
}
long int f10(p) long int p;{return p+p;}
long int f9(p) long int p;{return p+p;}
long int f8(p) long int p;{return p+p;}
long int f7(p) long int p;{return p+p;}
long int f6(p) long int p;{return p+p;}
long int f5(p) long int p;{return p+p;}
long int f4(p) long int p;{return p+p;}
long int f3(p) long int p;{return p+p;}
long int f2(p) long int p;{return p+p;}
long int f1(p) long int p;{return p+p;}
long int f20(p) long int p;{return p+p;}
long int f19(p) long int p;{return p+p;}
long int f18(p) long int p;{return p+p;}
long int f17(p) long int p;{return p+p;}
long int f16(p) long int p;{return p+p;}
long int f15(p) long int p;{return p+p;}
long int f14(p) long int p;{return p+p;}
long int f13(p) long int p;{return p+p;}
long int f12(p) long int p;{return p+p;}
long int f11(p) long int p;{return p+p;}
long int subx(p0,p1,p2,p3,p4,p5,p6,p7,p8,p9)
   long int p0,p1,p2,p3,p4,p5,p6,p7,p8,p9;{
return p0+p1+p2+p3+p4+p5+p6+p7+p8+p9;
}
