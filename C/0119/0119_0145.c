#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct {
 struct {
  struct {
   struct {
    struct {
     struct {
      struct {
       struct {
        struct {
         struct {
          struct {
           struct {
            struct {
             struct {
              struct {
               struct {
                struct {
                 struct {
                  struct {
                   struct {
                    struct {
                           int a ;
                           int b ;
                           } m20 ;
                          } m19 ;
                         } m18 ;
                        } m17 ;
                       } m16 ;
                      } m15 ;
                     } m14 ;
                    } m13 ;
                   } m12 ;
                  } m11 ;
                 } m10 ;
                } m9 ;
               } m8 ;
              } m7 ;
             } m6 ;
            } m5 ;
           } m4 ;
          } m3 ;
         } m2 ;
        } m1 ;
       } x = {{{{{{{{{{{{{{{{{{{{{1,2
              }}}}}}}}}}}}}}}}}}}}} ;
int main()
{
  int y ;

  printf("**** SCPLS07 **** \n") ;
  if ((y = x.m1.m2.m3.m4.m5.m6.m7.m8.m9.m10.
           m11.m12.m13.m14.m15.m16.m17.m18.m19.m20.a) == 1)
    printf(" *** A - O K  *** \n") ;
  else
    printf(" *** A - N G  *** %d \n,y") ;
  if ((y = x.m1.m2.m3.m4.m5.m6.m7.m8.m9.m10.
           m11.m12.m13.m14.m15.m16.m17.m18.m19.m20.b) == 2)
    printf(" *** B - O K  *** \n") ;
  else
    printf(" *** B - N G  *** %d \n,y") ;
  printf("****  E N D  **** \n") ;
exit (0);
}
