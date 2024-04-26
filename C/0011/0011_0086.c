#include  <stdio.h>

int main()
{
    struct t {
        signed long int fs:2;
    }                                                       ;
    struct t s                                               ;
    int    i                                                 ;

    printf("********** TEST STARTED **********\n") ;

    s.fs = 3                                                 ;

    i = s.fs                                                 ;

    if ( i ==-1 )
        printf("********** 01 OK **********\n") ;
    else
        printf("********** 01 NG **********\n") ;

    printf("********** TEST ENDED **********\n") ;

}
