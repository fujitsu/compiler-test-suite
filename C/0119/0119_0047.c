#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int first(
           int    i1, int    i2
          )                                                  ;
int main()
{
    int         ans                                          ;
    int             i1[1032]                               ;
    int                      i2[1031]                      ;
    int                                index1                ;
    int                                      index2          ;

    printf("********** SCOSC07 TEST STARTED **********\n")   ;

    for ( ans = 0 ; ans < 1030 ; ++ans)
        {
         i1[ans] = ans                                     ;
         i2[ans] = ans                                     ;
        }

    i1[1030] = i2[1030] = 1                              ;
    i2[1030] = i2[1030] = 2                              ;

    index1 = 1030                                            ;
    index2 = 1030                                            ;

    ans = first(i1[index1],i2[index2])                   ;

    if ( ans == 1 )
        printf("********** SCOSC07 - 01 OK **********\n");
    else
        printf("********** SCOSC07 - 01 NG **********\n");

    printf("********** SCOSC07 TEST ENDED **********\n") ;

exit (0);
}

int first( int i1,int i2 )
{
    return i1                                                ;
}
