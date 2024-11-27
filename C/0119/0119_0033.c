#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct t {
           unsigned int fs:2;
         } s1,*p;
int main()
{
    int        i,i1,i2                                        ;

    printf("********** SCOHDI4 TEST STARTED **********\n");

    i = 3                                                     ;
    p = &s1                                                   ;


    s1.fs = i                                                 ;


    if ( p->fs != 3)
        printf("********** SCOHDI4 -01 NG **********\n")  ;
    else
        printf("********** SCOHDI4 -01 OK **********\n")  ;


    i1 = s1.fs                                                ;
    i2 = p->fs                                                ;


    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI4 -02 OK **********\n")  ;
    else
        printf("********** SCOHDI4 -02 NG **********\n")  ;

    printf("********** SCOHDI4 TEST ENDED **********\n")  ;

exit (0);
}
