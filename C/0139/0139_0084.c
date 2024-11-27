#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

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
            printf("\n");
        else
            printf("\n");

    rllinta = pllifun1(flta,ssia,ib = ib << 2);
        if (*rllinta == 9223372036854775807LL)
            printf("\n");
        else
            printf("\n");

    rflta = pfltfun1(uca,ldba,pia);
        if (*rflta == 1024)
            printf("\n");
        else
            printf("\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
exit (0);
}

 

int *pintfun1(iab,lliab,st2)
int                     iab;
long long int           lliab;
struct  tag1 st2;
{
    static int     *prnc;
    static int      rnc = 2147483647;
    if (iab == 2147483647)
        printf("\n");
    else
        printf("\n");

    if (lliab == 9223372036854775807LL)
        printf("\n");
    else
        printf("\n");

    if (st2.stca  == 100)
        printf("\n");
    else
        printf("\n");

    if (st2.stia  == 1000)
        printf("\n");
    else
        printf("\n");

    if (st2.stda  == 10000)
        printf("\n");
    else
        printf("\n");

    return (prnc = &rnc);
}

 

long long int *pllifun1(flta,ssia,iba)
float                   flta;
signed short int        ssia;
int                     iba;
{
    static long long int  *prnc;
    static long long int  rnc = 9223372036854775807LL;
    if (flta == 128)
        printf("\n");
    else
        printf("\n");

    if (ssia == 32767)
        printf("\n");
    else
        printf("\n");

    if (iba == 4)
        printf("\n");
    else
        printf("\n");

    return (prnc = &rnc);
}

 

float *pfltfun1(ucab,ldbab,piab)
unsigned char           ucab;
long double             ldbab;
int                     *piab;
{
    static float   *prnc;
    static float    rnc = 1.024e+3;
    if (ucab == 255)
        printf("\n");
    else
        printf("\n");

    if (ldbab == 256)
        printf("\n");
    else
        printf("\n");

    if (*piab == 10)
        printf("\n");
    else
        printf("\n");

    return (prnc = &rnc);
}
