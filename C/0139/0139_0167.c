#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{

 
    struct  tag1 {
                   char                     nchara;
                   int                      ninta;
                   short int                nsinta;
                   long int                 nlinta;
#ifndef nollint
                   long long int            nllinta;
#endif
                   float                    nflta;
                   double                   ndbla;
                   long double              nldbla;
                 } *nmax,rnmax;

    struct  tag2 {
                   char                     ncharb;
                   int                      nintb;
                   short int                nsintb;
                   long int                 nlintb;
#ifndef nollint
                   long long int            nllintb;
#endif
                   float                    nfltb;
                   double                   ndblb;
                   long double              nldblb;
                 } *nmin,rnmin;

    struct  tag3 {
                   signed    char           schara;
                   signed    int            sinta;
                   signed    short int      ssinta;
                   signed    long int       slinta;
#ifndef nollint
                   signed    long long int  sllinta;
#endif
                 } *smax,rsmax;

    struct  tag4 {
                   signed    char           scharb;
                   signed    int            sintb;
                   signed    short int      ssintb;
                   signed    long int       slintb;
#ifndef nollint
                   signed    long long int  sllintb;
#endif
                 } *smin,rsmin;

    struct  tag5 {
                   unsigned  char           uchara;
                   unsigned  int            uinta;
                   unsigned  short int      usinta;
                   unsigned  long int       ulinta;
#ifndef nollint
                   unsigned  long long int  ullinta;
#endif
                 } *umax,rumax;

    struct  tag6 {
                   unsigned  char           ucharb;
                   unsigned  int            uintb;
                   unsigned  short int      usintb;
                   unsigned  long int       ulintb;
#ifndef nollint
                   unsigned  long long int  ullintb;
#endif
                 } *umin,rumin;

    nmax  =  &rnmax;
    nmin  =  &rnmin;
    smax  =  &rsmax;
    smin  =  &rsmin;
    umax  =  &rumax;
    umin  =  &rumin;

    nmax->nchara       = 127;
    nmax->ninta        = 2147483647;
    nmax->nsinta       = 32767;
    nmax->nlinta       = 2147483647;
#ifndef nollint
    nmax->nllinta      = 9223372036854775807LL;
#endif
    nmax->nflta        = 1.2e+3;
    nmax->ndbla        = 3.4e+5;
    nmax->nldbla       = 6.7e+8;

    nmin->ncharb       = 0;
    nmin->nintb        = -2147483648;
    nmin->nsintb       = -32768;
    nmin->nlintb       = -2147483648;
#ifndef nollint
    nmin->nllintb      = -9223372036854775808LL;
#endif
    nmin->nfltb        = -1.2e+3;
    nmin->ndblb        = -3.4e+5;
    nmin->nldblb       = -6.7e+8;

    smax->schara       = 127;
    smax->sinta        = 2147483647;
    smax->ssinta       = 32767;
    smax->slinta       = 2147483647;
#ifndef nollint
    smax->sllinta      = 9223372036854775807LL;
#endif

    smin->scharb       = -128;
    smin->sintb        = -2147483648;
    smin->ssintb       = -32768;
    smin->slintb       = -2147483648;
#ifndef nollint
    smin->sllintb      = -9223372036854775808LL;
#endif

    umax->uchara       = 255;
    umax->uinta        = 4294967295;
    umax->usinta       = 65535;
    umax->ulinta       = 4294967295;
#ifndef nollint
    umax->ullinta      = 18446744073709551615LL;
#endif

    umin->ucharb       = 0;
    umin->uintb        = 0;
    umin->usintb       = 0;
    umin->ulintb       = 0;
#ifndef nollint
    umin->ullintb      = 0;
#endif

    printf("\n");

 
    if (nmax->nchara == 127)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
 
    if (nmax->ninta == 2147483647)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
 
    if (nmax->nsinta == 32767)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
 
    if (nmax->nlinta == 2147483647)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
 
#ifndef nollint
    if (nmax->nllinta == 9223372036854775807LL)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
#endif
 
    if (nmax->nflta == 1.2e+3)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
 
    if (nmax->ndbla == 3.4e+5)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
 
    if (nmax->nldbla == 6.7e+8)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
 
    if (nmin->ncharb == 0)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
 
    if (nmin->nintb == -2147483648)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
 
    if (nmin->nsintb == -32768)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
 
    if (nmin->nlintb == -2147483648)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
 
#ifndef nollint
    if (nmin->nllintb == -9223372036854775808LL)
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N   G***\n");
    }
#endif
 
    if (nmin->nfltb == -1.2e+3)
    {
        printf("TEST14***O   K***\n");
    }
    else
    {
        printf("TEST14***N   G***\n");
    }
 
    if (nmin->ndblb == -3.4e+5)
    {
        printf("TEST15***O   K***\n");
    }
    else
    {
        printf("TEST15***N   G***\n");
    }
 
    if (nmin->nldblb == -6.7e+8)
    {
        printf("TEST16***O   K***\n");
    }
    else
    {
        printf("TEST16***N   G***\n");
    }
 
    if (smax->schara == 127)
    {
        printf("TEST17***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }
 
    if (smax->sinta == 2147483647)
    {
        printf("TEST18***O   K***\n");
    }
    else
    {
        printf("TEST18***N   G***\n");
    }
 
    if (smax->ssinta == 32767)
    {
        printf("TEST19***O   K***\n");
    }
    else
    {
        printf("TEST19***N   G***\n");
    }
 
    if (smax->slinta == 2147483647)
    {
        printf("TEST20***O   K***\n");
    }
    else
    {
        printf("TEST20***N   G***\n");
    }
 
#ifndef nollint
    if (smax->sllinta == 9223372036854775807LL)
    {
        printf("TEST21***O   K***\n");
    }
    else
    {
        printf("TEST21***N   G***\n");
    }
#endif
 
    if (smin->scharb == -128)
    {
        printf("TEST22***O   K***\n");
    }
    else
    {
        printf("TEST22***N   G***\n");
    }
 
    if (smin->sintb == -2147483648)
    {
        printf("TEST23***O   K***\n");
    }
    else
    {
        printf("TEST23***N   G***\n");
    }
 
    if (smin->ssintb == -32768)
    {
        printf("TEST24***O   K***\n");
    }
    else
    {
        printf("TEST24***N   G***\n");
    }
 
    if (smin->slintb == -2147483648)
    {
        printf("TEST25***O   K***\n");
    }
    else
    {
        printf("TEST25***N   G***\n");
    }
 
#ifndef nollint
    if (smin->sllintb == -9223372036854775808LL)
    {
        printf("TEST26***O   K***\n");
    }
    else
    {
        printf("TEST26***N   G***\n");
    }
#endif
 
    if (umax->uchara == 255)
    {
        printf("TEST27***O   K***\n");
    }
    else
    {
        printf("TEST27***N   G***\n");
    }
 
    if (umax->uinta == 4294967295)
    {
        printf("TEST28***O   K***\n");
    }
    else
    {
        printf("TEST28***N   G***\n");
    }
 
    if (umax->usinta == 65535)
    {
        printf("TEST29***O   K***\n");
    }
    else
    {
        printf("TEST29***N   G***\n");
    }
 
    if (umax->ulinta == 4294967295)
    {
        printf("TEST30***O   K***\n");
    }
    else
    {
        printf("TEST30***N   G***\n");
    }
 
#ifndef nollint
    if (umax->ullinta == 18446744073709551615LL)
    {
        printf("TEST31***O   K***\n");
    }
    else
    {
        printf("TEST31***N   G***\n");
    }
#endif
 
    if (umin->ucharb == 0)
    {
        printf("TEST32***O   K***\n");
    }
    else
    {
        printf("TEST32***N   G***\n");
    }
 
    if (umin->uintb == 0)
    {
        printf("TEST33***O   K***\n");
    }
    else
    {
        printf("TEST33***N   G***\n");
    }
 
    if (umin->usintb == 0)
    {
        printf("TEST34***O   K***\n");
    }
    else
    {
        printf("TEST34***N   G***\n");
    }
 
    if (umin->ulintb == 0)
    {
        printf("TEST35***O   K***\n");
    }
    else
    {
        printf("TEST35***N   G***\n");
    }
 
#ifndef nollint
    if (umin->ullintb == 0)
    {
        printf("TEST36***O   K***\n");
    }
    else
    {
        printf("TEST36***N   G***\n");
    }
#endif
    printf ("\n");
exit (0);
}
