#include  <stdio.h>

int first(
           int    i1, int    i2
          )                                                  ;
int main()
{
    int         ans,i1,i2,*p1,*p2                            ;

    printf("********** TEST STARTED **********\n")   ;

    i1 = 1    ; i2 = 2                                       ;
    p1 = &i1  ; p2 = &i2                                     ;

    ans = first(*p1,*p2)                                     ;

    if ( ans == 1 )
        printf("********** 01 OK **********\n");
    else
        printf("********** 01 NG **********\n");

    printf("********** TEST ENDED **********\n") ;

}

int first( int i1,int i2 )
{
    return i1                                                ;
}
