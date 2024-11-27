#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int subx (int p0, int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8, int p9);

int main( ) {
  int f1( ),f2( ),f3( ),f4( ),f5( ),f6( ),f7( ),f8( ),f9( ),f10( );
  int f11( ),f12( ),f13( ),f14( ),f15( ),f16( ),f17( ),f18( ),f19( ),f20( );
  int i,result;
  static int (*sub[ ])( )={f1,f2,f3,f4,f5,f6,f7,f8,f9,f10
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
                                                                                        sub[i+9](1)
                                                                                       )
                                                                              )
                                                                     )
                                                            )     
                                                   )
                                          )
                                 )
                        )
               );
    if (sub[i](result)==2048)
      printf ("** (%d) ** OK\n",i+1);
    else
      printf ("** (%d) ** NG result=%d\n",i+1,result);
  }
  for (i=0; i<=10;i++) {
    result=subx(sub[i](i),sub[i+1](i),sub[i+2](i),sub[i+3](i),sub[i+4](i)
               ,sub[i+5](i),sub[i+6](i),sub[i+7](i),sub[i+8](i),sub[i+9](i));
    if (result==(i*20))
      printf ("** (%d) ** OK\n",i+12);
    else
      printf ("** (%d) ** NG result=%d\n",i+12,result);
  }
exit (0);
}
int f10 (int p){return p+p;}
int f9 (int p){return p+p;}
int f8 (int p){return p+p;}
int f7 (int p){return p+p;}
int f6 (int p){return p+p;}
int f5 (int p){return p+p;}
int f4 (int p){return p+p;}
int f3 (int p){return p+p;}
int f2 (int p){return p+p;}
int f1 (int p){return p+p;}
int f20 (int p){return p+p;}
int f19 (int p){return p+p;}
int f18 (int p){return p+p;}
int f17 (int p){return p+p;}
int f16 (int p){return p+p;}
int f15 (int p){return p+p;}
int f14 (int p){return p+p;}
int f13 (int p){return p+p;}
int f12 (int p){return p+p;}
int f11 (int p){return p+p;}
int subx (int p0, int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8, int p9){
return p0+p1+p2+p3+p4+p5+p6+p7+p8+p9;
}
