#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
    double         d = 0.0   ;
    int            i         ;

    printf("********** SCOSCR1 TEST STARTED **********\n")    ;

    while (d < 10)
        d = d + 1.0              ;

    i = d                 ;

    if ((i > 8)||(i<11))
        printf("********** SCOSCR1 - 01 OK **********\n")    ;
    else
        printf("********** SCOSCR1 - 01 NG **********\n")    ;

    printf("********** SCOSCR1 TEST STARTED **********\n")    ;

exit (0);
}
