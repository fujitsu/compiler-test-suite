#include <stdio.h>
    struct tag1 {
                  char       stca;
                  int        stia;
                  double     stda;
                };
int main()
{
    int           *pintfun1();
    long long int *pllifun1();
    float         *pfltfun1();

    int              ia;
    long long int    llia;
    float            flta;
    signed short int ssia;
    unsigned char    uca;
    long double      ldba;
    int              *pia;
    int              pib = 10;
    int              ib;

    struct tag1 st1;

    int              *rinta;
    long long int    *rllinta;
    float            *rflta;

    ia   = 2147483647;
    llia = 9223372036854775807LL;
    flta = 1.28e+2;
    ssia = 32767;
    uca  = 255;
    ldba = 0.0256e+4;
    ib   = 1;
    pia = &pib;
    st1.stca = 100;
    st1.stia = 1000;
    st1.stda = 1.0e+4;


    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    rinta = pintfun1(ia,llia,st1);
        if (*rinta == 2147483647)
            printf("-TEST01-6*** RETURN CORD OK ***\n");
        else
            printf("-TEST01-6*** RETURN CORD NG ***\n");

    rllinta = pllifun1(flta,ssia,ib = ib << 2);
        if (*rllinta == 9223372036854775807LL)
            printf("-TEST02-4*** RETURN CORD OK ***\n");
        else
            printf("-TEST02-4*** RETURN CORD NG ***\n");

    rflta = pfltfun1(uca,ldba,pia);
        if (*rflta == 1024)
            printf("-TEST03-4*** RETURN CORD OK ***\n");
        else
            printf("-TEST03-4*** RETURN CORD NG ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int *pintfun1(iab,lliab,st2)
int                     iab;
long long int           lliab;
struct  tag1 st2;
{
    int     *prnc;
    static int      rnc = 2147483647;
    if (iab == 2147483647)
        printf("-TEST01-1*** O     K ***\n");
    else
        printf("-TEST01-1*** N     G ***\n");

    if (lliab == 9223372036854775807LL)
        printf("-TEST01-2*** O     K ***\n");
    else
        printf("-TEST01-2*** N     G ***\n");

    if (st2.stca  == 100)
        printf("-TEST01-3*** O     K ***\n");
    else
        printf("-TEST01-3*** N     G ***\n");

    if (st2.stia  == 1000)
        printf("-TEST01-4*** O     K ***\n");
    else
        printf("-TEST01-4*** N     G ***\n");

    if (st2.stda  == 10000)
        printf("-TEST01-5*** O     K ***\n");
    else
        printf("-TEST01-5*** N     G ***\n");

    return (prnc = &rnc);
}


long long int *pllifun1(flta,ssia,iba)
float                   flta;
signed short int        ssia;
int                     iba;
{
    long long int  *prnc;
    static long long int  rnc = 9223372036854775807LL;
    if (flta == 128)
        printf("-TEST02-1*** O     K ***\n");
    else
        printf("-TEST02-1*** N     G ***\n");

    if (ssia == 32767)
        printf("-TEST02-2*** O     K ***\n");
    else
        printf("-TEST02-2*** N     G ***\n");

    if (iba == 4)
        printf("-TEST02-3*** O     K ***\n");
    else
        printf("-TEST02-3*** N     G ***\n");

    return (prnc = &rnc);
}


float *pfltfun1(ucab,ldbab,piab)
unsigned char           ucab;
long double             ldbab;
int                     *piab;
{
    float   *prnc;
    static float    rnc = 1.024e+3;
    if (ucab == 255)
        printf("-TEST03-1*** O     K ***\n");
    else
        printf("-TEST03-1*** N     G ***\n");

    if (ldbab == 256)
        printf("-TEST03-2*** O     K ***\n");
    else
        printf("-TEST03-2*** N     G ***\n");

    if (*piab == 10)
        printf("-TEST04-3*** O     K ***\n");
    else
        printf("-TEST04-3*** N     G ***\n");

    return (prnc = &rnc);
}
