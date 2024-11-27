#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct t {
           unsigned int fs:2;
         } s1,s2,*p;
int main()
{
    int        i,i1,i2                                        ;

    printf("********** SCOHDI2 TEST STARTED **********\n");

    i = 3                                                     ;
    p = &s2                                                   ;


    s1.fs = i                                                 ;
    p->fs = i                                                 ;


    if ( s1.fs == 3)
        printf("********** SCOHDI2 -01 OK **********\n")  ;
    if ( s1.fs != 3)
        printf("********** SCOHDI2 -01 NG **********\n")  ;


    if ( p->fs == 3)
        printf("********** SCOHDI2 -02 OK **********\n")  ;
    if ( p->fs != 3)
        printf("********** SCOHDI2 -02 NG **********\n")  ;


    i1 = s1.fs                                                ;
    i2 = p->fs                                                ;


    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI2 -03 OK **********\n")  ;
    else
        printf("********** SCOHDI2 -03 NG **********\n")  ;

    printf("********** SCOHDI2 TEST ENDED **********\n")  ;

exit (0);
}
