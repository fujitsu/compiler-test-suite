#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
    int    i,k                                                ;



    printf("********** SCOOD02 TEST STARTED **********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** SCOOD02 -01 OK **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -01 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -02 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -02 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -02 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -03 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -04 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -05 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    }


exit (0);
}
