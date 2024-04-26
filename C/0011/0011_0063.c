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
    case 2:
        printf("********** 01 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** 01 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** 01 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** 01 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** 01 NG **********\n")  ;
        break                                                 ;
    }



    if ( i<k || ((k>i)==(i<k)) )
        printf("********** 02 OK **********\n")  ;
    else
        printf("********** 02 NG **********\n")  ;

    printf("********** TEST ENDED **********\n")  ;

}
