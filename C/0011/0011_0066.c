#include  <stdio.h>

struct t{
          int i1                                                ;
          int i2                                                ;
        }                                                      ;

struct t f1(
            int i1,
            int i2
           )                                                    ;
int main()
{
    struct t s1                                                 ;

    printf("********** TEST STARTED **********\n")  ;

    s1 = f1(1,2)                                                ;

    if ( s1.i1 == 1 )
        printf("********** 01 OK **********\n")   ;
    else
        printf("********** 01 NG **********\n")   ;

    printf("********** TEST ENDED **********\n")    ;

}
struct t f1(
           int i1,
           int i2
           )
{
    struct t s1,*ps1                                            ;

    s1.i1 = i1                                                  ;
    s1.i2 = i2                                                  ;

    ps1 = &s1                                                   ;
    return *ps1                                                 ;
}
