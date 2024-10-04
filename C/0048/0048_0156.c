#include <stdio.h>
int main()
{
    char                   ca;
    int                    ia;
    short int              sia;
    long int               lia;
    long long int          llia;

    signed char            scb;
    signed int             sib;
    signed short int       ssib;
    signed long int        slib;
    signed long long int   sllib;

    unsigned char          ucc;
    unsigned int           uic;
    unsigned short int     usic;
    unsigned long int      ulic;
    unsigned long long int ullic;

    float                  fa;
    double                 da;
    long double            lda;

    int                    *p;
    int                    pa=1;

    ca     =  0;
    ia     =  100;
    sia    =  200;
    lia    =  300;
    llia   =  400;
    scb    =  100;
    sib    =  0;
    ssib   =  200;
    slib   =  300;
    sllib  =  400;
    ucc    =  1;
    uic    =  2;
    usic   =  3;
    ulic   =  4;
    ullic  =  0;
    fa     =  128;
    da     =  0;
    lda    =  256;
    pa     =  0;
    p      =  &pa;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(!ca)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01**** N   G ****\n");

    if(!ia)
        printf("***-02**** N   G ****\n");
    else
        printf("***-02*** O     K ***\n");

    if(!sia)
        printf("***-03**** N   G ****\n");
    else
        printf("***-03*** O     K ***\n");

    if(!lia)
        printf("***-04**** N   G ****\n");
    else
        printf("***-04*** O     K ***\n");

    if(!llia)
        printf("***-05**** N   G ****\n");
    else
        printf("***-05*** O     K ***\n");

    if(!scb)
        printf("***-06**** N   G ****\n");
    else
        printf("***-06*** O     K ***\n");

    if(!sib)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07**** N   G ****\n");

    if(!ssib)
        printf("***-08**** N   G ****\n");
    else
        printf("***-08*** O     K ***\n");

    if(!slib)
        printf("***-09**** N   G ****\n");
    else
        printf("***-09*** O     K ***\n");

    if(!sllib)
        printf("***-10**** N   G ****\n");
    else
        printf("***-10*** O     K ***\n");

    if(!ucc)
        printf("***-11**** N   G ****\n");
    else
        printf("***-11*** O     K ***\n");

    if(!uic)
        printf("***-12**** N   G ****\n");
    else
        printf("***-12*** O     K ***\n");

    if(!usic)
        printf("***-13**** N   G ****\n");
    else
        printf("***-13*** O     K ***\n");

    if(!ulic)
        printf("***-14**** N   G ****\n");
    else
        printf("***-14*** O     K ***\n");

    if(!ullic)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15**** N   G ****\n");

    if(!fa)
        printf("***-16**** N   G ****\n");
    else
        printf("***-16*** O     K ***\n");

    if(!da)
        printf("***-17*** O     K ***\n");
    else
        printf("***-17**** N   G ****\n");

    if(!lda)
        printf("***-18**** N   G ****\n");
    else
        printf("***-18*** O     K ***\n");

    if(!*p)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19**** N   G ****\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
