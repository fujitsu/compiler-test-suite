#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int main( ) {
  long long int f1( ),f2( ),f3( ),f4( ),f5( ),f6( ),f7( ),f8( ),f9( ),f10( );
  long long int f11( ),f12( ),f13( ),f14( ),f15( ),f16( ),f17( ),f18( ),f19( ),f20( );
  long long int i,result,subx( );
  int j;
  static long long int (*sub[ ])( )={f1,f2,f3,f4,f5,f6,f7,f8,f9,f10
                          ,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20};
  for (i=0; i<=10;i++) {
  result=sub[i](
                sub[i+1](
                         sub[i+2](
                                  sub[i+3](
                                           sub[i+4](
                                                    sub[i+5](
                                                             sub[i+6](
                                                                      sub[i+7](
                                                                               sub[i+8](
                                                                                        sub[i+9](1ll)
                                                                                       )
                                                                              )
                                                                     )
                                                            )     
                                                   )
                                          )
                                 )
                        )
               );
    if (sub[i](result)==2048LL)
      printf ("** (%d) ** OK\n",(int)(i+1));
    else
      printf ("** (%d) ** NG result=%d\n",(int)(i+1),result);
  }
  for (i=0; i<=10;i++) {
    result=subx(sub[i](i),sub[i+1](i),sub[i+2](i),sub[i+3](i),sub[i+4](i)
               ,sub[i+5](i),sub[i+6](i),sub[i+7](i),sub[i+8](i),sub[i+9](i));
    if (result==(i*20))
      printf ("** (%d) ** OK\n",(int)(i+12));
    else
      printf ("** (%d) ** NG result=%d\n",(int)(i+12),result);
  }
exit (0);
}
long long int f10(p) long long int p;{return p+p;}
long long int f9(p) long long int p;{return p+p;}
long long int f8(p) long long int p;{return p+p;}
long long int f7(p) long long int p;{return p+p;}
long long int f6(p) long long int p;{return p+p;}
long long int f5(p) long long int p;{return p+p;}
long long int f4(p) long long int p;{return p+p;}
long long int f3(p) long long int p;{return p+p;}
long long int f2(p) long long int p;{return p+p;}
long long int f1(p) long long int p;{return p+p;}
long long int f20(p) long long int p;{return p+p;}
long long int f19(p) long long int p;{return p+p;}
long long int f18(p) long long int p;{return p+p;}
long long int f17(p) long long int p;{return p+p;}
long long int f16(p) long long int p;{return p+p;}
long long int f15(p) long long int p;{return p+p;}
long long int f14(p) long long int p;{return p+p;}
long long int f13(p) long long int p;{return p+p;}
long long int f12(p) long long int p;{return p+p;}
long long int f11(p) long long int p;{return p+p;}
long long int subx(p0,p1,p2,p3,p4,p5,p6,p7,p8,p9)
   long long int p0,p1,p2,p3,p4,p5,p6,p7,p8,p9;{
return p0+p1+p2+p3+p4+p5+p6+p7+p8+p9;
}
