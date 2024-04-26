#include  <stdio.h>

struct t {
           unsigned int fs:2;
         } s1,s2,*p;
int main()
{
    int        i,i1,i2                                        ;

    printf("********** TEST STARTED **********\n");

    i = 3                                                     ;
    p = &s2                                                   ;


    s1.fs = i                                                 ;
    p->fs = i                                                 ;


    if ( s1.fs == 3)
        printf("********** 01 OK **********\n")  ;
    if ( s1.fs != 3)
        printf("********** 01 NG **********\n")  ;


    if ( p->fs == 3)
        printf("********** 02 OK **********\n")  ;
    if ( p->fs != 3)
        printf("********** 02 NG **********\n")  ;


    i1 = s1.fs                                                ;
    i2 = p->fs                                                ;


    if ( (i1==3)&&(i2==3) )
        printf("********** 03 OK **********\n")  ;
    else
        printf("********** 03 NG **********\n")  ;

    printf("********** TEST ENDED **********\n")  ;

}
