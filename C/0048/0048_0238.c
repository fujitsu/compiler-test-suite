#include <stdio.h>
int main()
{
    char             nchara;
    int              ninta;
    short int        nsinta;
    long  int        nlinta;
    long  long int   nllinta;

    float            nflta;
    double           ndbla;
    long double      nldbla;


    printf ("***TEST FOR TOKEN***STARTED\n");
    nchara = 0;
    if(nchara == 0)
    {
        printf ("TEST01 *** O  K ***\n");
    }
    else
    {
        printf ("TEST01 *** N  G ***\n");
    }

    nchara = 0xff;
#ifdef S_CHAR
    if(nchara == -1)
#else
    if(nchara == 255)
#endif
    {
        printf ("TEST02 *** O  K ***\n");
    }
    else
    {
        printf ("TEST02 *** N  G ***\n");
    }


    ninta = -2147483648;
    if(ninta == -2147483648)
    {
        printf ("TEST03 *** O  K ***\n");
    }
    else
    {
        printf ("TEST03 *** N  G ***\n");
    }
    ninta = 2147483647;
    if(ninta == 2147483647)
    {
        printf ("TEST04 *** O  K ***\n");
    }
    else
    {
        printf ("TEST04 *** N  G ***\n");
    }
    nsinta = -32768;
    if(nsinta == -32768)
    {
        printf ("TEST05 *** O  K ***\n");
    }
    else
    {
        printf ("TEST05 *** N  G ***\n");
    }
    nsinta = 32767;
    if(nsinta == 32767)
    {
        printf ("TEST06 *** O  K ***\n");
    }
    else
    {
        printf ("TEST06 *** N  G ***\n");
    }
    nlinta = -2147483648;
    if(nlinta == -2147483648)
    {
        printf ("TEST07 *** O  K ***\n");
    }
    else
    {
        printf ("TEST07 *** N  G ***\n");
    }
    nlinta = 2147483647;
    if(nlinta == 2147483647)
    {
        printf ("TEST08 *** O  K ***\n");
    }
    else
    {
        printf ("TEST08 *** N  G ***\n");
    }

#ifndef  nollint

    nllinta = -9223372036854775808LL;
    if(nllinta == -9223372036854775808LL)
    {
        printf ("TEST09 *** O  K ***\n");
    }
    else
    {
        printf ("TEST09 *** N  G ***\n");
    }
    nllinta = 9223372036854775807LL;
    if(nllinta == 9223372036854775807LL)
    {
        printf ("TEST10 *** O  K ***\n");
    }
    else
    {
        printf ("TEST10 *** N  G ***\n");
    }

#endif

    nflta = 0123.456;
    if(nflta == 123.456f)
    {
        printf("TEST11 *** O  K ***\n");
    }
    else
    {
        printf("TEST11 *** N  G ***\n");
    }
    printf ("***TEST FOR TOKEN***END\n");
}
