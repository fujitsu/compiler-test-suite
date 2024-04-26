#include  <stdio.h>

struct t {
         int m[1003]                                       ;
         }                                                  ;
struct t f1(
            struct t s1,
            int      i1,
            int      i2,
            int      i3
           )                                                 ;
int main()
{
    int         lcount                                       ;
    struct t    s1,s2                                        ;

    printf("********** TEST STARTED **********\n")   ;

    for ( lcount = 0 ; lcount < 1003 ; s1.m[ lcount ] = lcount, lcount++ )  ;

    s2 = f1(s1,0,1,2)                                        ;

    if (s2.m[3] == 3 )
        printf("********** 01 OK **********\n")   ;
    else {
        printf("********** 01 NG **********\n")   ;
    }

    printf("********** TEST ENDED **********\n")   ;

}

struct t f1( struct t tas1, int tai1, int tai2, int tai3 )
{
    return tas1                                                ;
}
