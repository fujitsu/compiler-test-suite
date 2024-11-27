#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
    int    i,k                                                ;



    printf("********** SCOOD01 TEST STARTED **********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** SCOOD01 -01 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    }



    if ( i<k || ((k>i)==(i<k)) )
        printf("********** SCOOD01 -02 OK **********\n")  ;
    else
        printf("********** SCOOD01 -02 NG **********\n")  ;

    printf("********** SCOOD01 TEST ENDED **********\n")  ;

exit (0);
}
