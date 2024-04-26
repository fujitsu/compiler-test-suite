#include  <stdio.h>

int main()
{
    double         d = 0.0   ;
    int            i         ;

    printf("********** TEST STARTED **********\n")    ;

    while (d < 10)
        d = d + 1.0              ;

    i = d                 ;

    if ((i > 8)||(i<11))
        printf("********** 01 OK **********\n")    ;
    else
        printf("********** 01 NG **********\n")    ;

    printf("********** TEST STARTED **********\n")    ;

}
