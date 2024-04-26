#include  <stdio.h>

int main()
{
    int    i,k                                                ;


    printf("********** TEST STARTED **********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** 01 OK **********\n")  ;
        break                                                 ;
    default:
        printf("********** 01 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** 02 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** 02 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** 02 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** 03 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** 03 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** 03 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** 03 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** 04 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** 04 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** 04 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** 04 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** 04 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** 05 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** 05 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** 05 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** 05 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** 05 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** 05 NG **********\n")  ;
        break                                                 ;
    }



}
