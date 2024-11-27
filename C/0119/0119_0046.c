#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int first(
           int    i1, int    i2
          )                                                  ;
int main()
{
    int         ans,i1,i2,*p1,*p2                            ;

    printf("********** SCOSC06 TEST STARTED **********\n")   ;

    i1 = 1    ; i2 = 2                                       ;
    p1 = &i1  ; p2 = &i2                                     ;

    ans = first(*p1,*p2)                                     ;

    if ( ans == 1 )
        printf("********** SCOSC06 - 01 OK **********\n");
    else
        printf("********** SCOSC06 - 01 NG **********\n");

    printf("********** SCOSC06 TEST ENDED **********\n") ;

exit (0);
}

int first( int i1,int i2 )
{
    return i1                                                ;
}
