#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
    struct t {
        signed long int fs:2;
    }                                                       ;
    struct t s                                               ;
    int    i                                                 ;

    printf("********** SCOSCR2 TEST STARTED **********\n") ;

    s.fs = 3                                                 ;

    i = s.fs                                                 ;

    if ( i ==-1 )
        printf("********** SCOSCR2 -01 OK **********\n") ;
    else
        printf("********** SCOSCR2 -01 NG **********\n") ;

    printf("********** SCOSCR2 TEST ENDED **********\n") ;

exit (0);
}
