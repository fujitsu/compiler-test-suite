#include <stdio.h>
int main()
{
    char                   ca   ,*pca;
    int                    ia   ,*pia;
    short int              sia  ,*psia;
    long int               lia  ,*plia;
    long long int          llia ,*pllia;
    signed char            scb  ,*pscb;
    signed int             sib  ,*psib;
    signed short int       ssib ,*pssib;
    signed long int        slib ,*pslib;
    signed long long int   sllib,*psllib;
    unsigned char          ucc  ,*pucc;
    unsigned int           uic  ,*puic;
    unsigned short int     usic ,*pusic;
    unsigned long int      ulic ,*pulic;
    unsigned long long int  ullic,*pllic;

    float                  fa   ,*pfa;
    double                 da   ,*pda;
    long double            lda  ,*plda;

    ca     =  255;
    ia     =  2147483647;
    sia    =  32767;
    lia    =  2147483647;
    llia   =  9223372036854775807LL;
    scb    =  -128;
    sib    =  -2147483648;
    ssib   =  -32768;
    slib   =  -2147483648;
    sllib  =  -9223372036854775808LL;
    ucc    =  255;
    uic    =  4294967295;
    usic   =  65535;
    ulic   =  4294967295;
    ullic  =  18446744073709551615LL;

    fa     =  128;
    da     =  256;
    lda    =  512;

    pca    = &ca;
    pia    = &ia;
    psia   = &sia;
    plia   = &lia;
    pllia  = &llia;
    pscb   = &scb;
    psib   = &sib;
    pssib  = &ssib;
    pslib  = &slib;
    psllib = &sllib;
    pucc   = &ucc;
    puic   = &uic;
    pusic  = &usic;
    pulic  = &ulic;
    pllic = &ullic;

    pfa    = &fa;
    pda    = &da;
    plda   = &lda;

    printf(" *** TEST FOR EXPRESSION *** STARTED\n");

#ifdef S_CHAR
    if(*pca == -1 )
#else
    if(*pca == 255 )
#endif
        printf("-01*** O     K ***\n");
    else
        printf("-01*** N     G ***\n");

    if(*pia == 2147483647)
        printf("-02*** O     K ***\n");
    else
        printf("-02*** N     G ***\n");

    if(*psia == 32767)
        printf("-03*** O     K ***\n");
    else
        printf("-03*** N     G ***\n");

    if(*plia == 2147483647)
        printf("-04*** O     K ***\n");
    else
        printf("-04*** N     G ***\n");

    if(*pllia == 9223372036854775807LL)
        printf("-05*** O     K ***\n");
    else
        printf("-05*** N     G ***\n");

    if(*pscb == -128)
        printf("-06*** O     K ***\n");
    else
        printf("-06*** N     G ***\n");

    if(*psib == -2147483648)
        printf("-07*** O     K ***\n");
    else
        printf("-07*** N     G ***\n");

    if(*pssib == -32768)
        printf("-08*** O     K ***\n");
    else
        printf("-08*** N     G ***\n");

    if(*pslib == -2147483648)
        printf("-09*** O     K ***\n");
    else
        printf("-09*** N     G ***\n");

    if(*psllib == -9223372036854775808LL)
        printf("-10*** O     K ***\n");
    else
        printf("-10*** N     G ***\n");

    if(*pucc == 255)
        printf("-11*** O     K ***\n");
    else
        printf("-11*** N     G ***\n");

    if(*puic == 4294967295)
        printf("-12*** O     K ***\n");
    else
        printf("-12*** N     G ***\n");

    if(*pusic == 65535)
        printf("-13*** O     K ***\n");
    else
        printf("-13*** N     G ***\n");

    if(*pulic == 4294967295)
        printf("-14*** O     K ***\n");
    else
        printf("-14*** N     G ***\n");

    if(*pllic == 18446744073709551615LL)
        printf("-15*** O     K ***\n");
    else
        printf("-15*** N     G ***\n");

    if(*pfa == 128)
        printf("-16*** O     K ***\n");
    else
        printf("-16*** N     G ***\n");

    if(*pda == 256)
        printf("-17*** O     K ***\n");
    else
        printf("-17*** N     G ***\n");

    if(*plda == 512)
        printf("-18*** O     K ***\n");
    else
        printf("-18*** N     G ***\n");
}
