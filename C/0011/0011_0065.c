#include  <stdio.h>

int main()
{
    int i1,i2,i3,i4,*pi,ii                                      ;
    short int *p1,*p2                                           ;

    printf("********** TEST STARTED **********\n")  ;

    i1     = 1                                                  ;
    i2     = 2                                                  ;

    p1     =  (short int*) &i1                                  ;
    p2     =  (short int*) &i2                                  ;
    pi     =  &i1                                               ;

    i3     = *(int *)p1                                         ;
    i4     = *(int *)p2                                         ;
    ii     = *pi                                                ;

    if (i3 == 1 )
        printf("********** 01 OK **********\n")    ;
    else
        printf("********** 01 NG **********\n")    ;

    if (ii == 1 )
        printf("********** 01.5 OK **********\n")  ;
    else
        printf("********** 01.5 NG **********\n")  ;

    if (i4 == 2 )
        printf("********** 02 OK **********\n")    ;
    else
        printf("********** 02 NG **********\n")    ;

    printf("********** TEST ENDED **********\n")    ;

}
