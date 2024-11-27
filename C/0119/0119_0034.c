#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct t {
           unsigned int fs:2;
         } s1,*p;
int main()
{
    int       i1,i2                                        ;

    printf("********** SCOHDI5 TEST STARTED **********\n");

    s1.fs = 3                                          ;
    p = &s1                                                   ;


    i1 = s1.fs                                                ;
    i2 = p->fs                                                ;



    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI5 -01 OK **********\n")  ;
    else
        printf("********** SCOHDI5 -01 NG **********\n")  ;

    printf("********** SCOHDI5 TEST ENDED **********\n")  ;

exit (0);
}
