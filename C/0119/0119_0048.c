#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct t255 {
             char c[255]                                      ;
            }                                                  ;

struct t256 {
             char c[256]                                      ;
            }                                                  ;

struct t257 {
             char c[257]                                      ;
            }                                                  ;
int main()
{
  struct t255 s255                                              ;
  struct t256 s256                                              ;
  struct t257 s257                                              ;
  void f(
         char,
         int,
         struct t255,
         struct t256,
         struct t257
        )                                                       ;

  printf("********** SCOSC13 TEST STARTED **********\n")    ;

  s255.c[0] = s256.c[0] = s257.c[0] = '1'                 ;

  f('1',1,s255,s256,s257)                                       ;

  printf("********** SCOSC13 TEST ENDED **********\n")      ;

exit (0);
}
void f(
       char         c   ,
       int          i   ,
       struct t255  s255,
       struct t256  s256,
       struct t257  s257
      )
{
  if (s255.c[0] == '1' )
    printf("********** SCOSC13 - 01 OK **********\n")       ;
  else
    printf("********** SCOSC13 - 01 NG **********\n")       ;
}
