#include <stdio.h>
int main()
{


static char             nchara[]  =  { 127,-128 };
static int              ninta[]   =  { 2147483647,-2147483648 };
static short int        nsinta[]  =  { 32767,-32768 };
static long  int        nlinta[]  =  { 2147483647,-2147483648 };
#ifndef nollint
static long  long  int  nllinta[] =  { 2147483647,-2147483648 };
#endif
static float            nflta[]   =  { 1.2,3.4e+5,6.7e-8 };
static double           ndbla[]   =  { 1.2,3.4e+5,6.7e-8 };
static long  double     nldbla[]  =  { 1.2,3.4e+5,6.7e-8 };


static signed char          schara[]  = { 127,-128 };
static signed int           sinta[]   = { 2147483647,-2147483648 };
static signed short int     ssinta[]  = { 32767,-32768 };
static signed long  int     slinta[]  = { 2147483647,-2147483648 };
#ifndef nollint
static signed long long int sllinta[] = { 2147483647,-2147483648 };
#endif


static unsigned char           uchara[]  = { 255,0 };
static unsigned int            uinta[]   = { 4294967295,0 };
static unsigned short int      usinta[]  = { 65535,0 };
static unsigned long int       ulinta[]  = { 4294967295,0 };
#ifndef nollint
static unsigned long long int  ullinta[] = { 4294967295,0 };
#endif



    char            *ncharb[]   =  { nchara ,&nchara[1]  };
    int             *nintb[]    =  { ninta  ,&ninta[1]   };
    short int       *nsintb[]   =  { nsinta ,&nsinta[1]  };
    long  int       *nlintb[]   =  { nlinta ,&nlinta[1]  };
#ifndef nollint
    long  long  int *nllintb[]  =  { nllinta,&nllinta[1] };
#endif
    float           *nfltb[] = { nflta,&nflta[1],&nflta[2] };
    double          *ndblb[] = { ndbla,&ndbla[1],&ndbla[2]};
    long  double    *nldblb[]= { nldbla,&nldbla[1],&nldbla[2] };


    signed char          *scharb[]   =  { schara ,&schara[1]  };
    signed int           *sintb[]    =  { sinta  ,&sinta[1]   };
    signed short int     *ssintb[]   =  { ssinta ,&ssinta[1]  };
    signed long  int     *slintb[]   =  { slinta ,&slinta[1]  };
#ifndef nollint
    signed long long int *sllintb[]  =  { sllinta,&sllinta[1] };
#endif


    unsigned char          *ucharb[]  =  { uchara ,&uchara[1]  };
    unsigned int           *uintb[]   =  { uinta  ,&uinta[1]   };
    unsigned short int     *usintb[]  =  { usinta ,&usinta[1]  };
    unsigned long int      *ulintb[]  =  { ulinta ,&ulinta[1]  };
#ifndef nollint
    unsigned long long int *ullintb[] =  { ullinta,&ullinta[1] };
#endif

    printf("***TEST FOR TOKEN***STARTED\n");

    if (*ncharb[0] == 127)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
#ifdef S_CHAR
    if (*ncharb[1] == -128)
#else
    if (*ncharb[1] ==  128)
#endif
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if (*nintb[0] == 2147483647)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if (*nintb[1] == -2147483648)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if (*nsintb[0] == 32767)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if (*nsintb[1] == -32768)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if (*nlintb[0] == 2147483647)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if (*nlintb[1] == -2147483648)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
#ifndef nollint
    if (*nllintb[0] == 2147483647)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if (*nllintb[1] == -2147483648)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
#else
        printf("TEST09***O   K***\n");
        printf("TEST10***O   K***\n");
#endif
    if ((*nfltb[0] - 1.2) >= -1e-6 && (*nfltb[0] - 1.2) <= 1e-6)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if (*nfltb[1] == 3.4e+5)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    if ((*nfltb[2] - 6.7e-8) <= 1e-6 &&
         (*nfltb[2] - 6.7e-8) >= -1e-6)
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N   G***\n");
    }
    if (*ndblb[0] == 1.2)
    {
        printf("TEST14***O   K***\n");
    }
    else
    {
        printf("TEST14***N   G***\n");
    }
    if (*ndblb[1] == 3.4e+5)
    {
        printf("TEST15***O   K***\n");
    }
    else
    {
        printf("TEST15***N   G***\n");
    }
    if (*ndblb[2] == 6.7e-8)
    {
        printf("TEST16***O   K***\n");
    }
    else
    {
        printf("TEST16***N   G***\n");
    }
    if (*nldblb[0] == 1.2)
    {
        printf("TEST17***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }
    if (*nldblb[1] == 3.4e+5)
    {
        printf("TEST18***O   K***\n");
    }
    else
    {
        printf("TEST18***N   G***\n");
    }
    if (*nldblb[2] == 6.7e-8)
    {
        printf("TEST19***O   K***\n");
    }
    else
    {
        printf("TEST19***N   G***\n");
    }
    if (*scharb[0] == 127)
    {
        printf("TEST20***O   K***\n");
    }
    else
    {
        printf("TEST20***N   G***\n");
    }
    if (*scharb[1] == -128)
    {
        printf("TEST21***O   K***\n");
    }
    else
    {
        printf("TEST21***N   G***\n");
    }
    if (*sintb[0] == 2147483647)
    {
        printf("TEST22***O   K***\n");
    }
    else
    {
        printf("TEST22***N   G***\n");
    }
    if (*sintb[1] == -2147483648)
    {
        printf("TEST23***O   K***\n");
    }
    else
    {
        printf("TEST23***N   G***\n");
    }
    if (*ssintb[0] == 32767)
    {
        printf("TEST24***O   K***\n");
    }
    else
    {
        printf("TEST24***N   G***\n");
    }
    if (*ssintb[1] == -32768)
    {
        printf("TEST25***O   K***\n");
    }
    else
    {
        printf("TEST25***N   G***\n");
    }
    if (*slintb[0] == 2147483647)
    {
        printf("TEST26***O   K***\n");
    }
    else
    {
        printf("TEST26***N   G***\n");
    }

    if (*slintb[1] == -2147483648)
    {
        printf("TEST27***O   K***\n");
    }
    else
    {
        printf("TEST27***N   G***\n");
    }
#ifndef nollint
    if (*sllintb[0] == 2147483647)
    {
        printf("TEST28***O   K***\n");
    }
    else
    {
        printf("TEST28***N   G***\n");
    }
    if (*sllintb[1] == -2147483648)
    {
        printf("TEST29***O   K***\n");
    }
    else
    {
        printf("TEST29***N   G***\n");
    }
#else
        printf("TEST28***O   K***\n");
        printf("TEST29***O   K***\n");
#endif
    if (*ucharb[0] == 255)
    {
        printf("TEST30***O   K***\n");
    }
    else
    {
        printf("TEST30***N   G***\n");
    }
    if (*ucharb[1] == 0)
    {
        printf("TEST31***O   K***\n");
    }
    else
    {
        printf("TEST31***N   G***\n");
    }
    if (*uintb[0] == 4294967295)
    {
        printf("TEST32***O   K***\n");
    }
    else
    {
        printf("TEST32***N   G***\n");
    }
    if (*uintb[1] == 0)
    {
        printf("TEST33***O   K***\n");
    }
    else
    {
        printf("TEST33***N   G***\n");
    }
    if (*usintb[0] == 65535)
    {
        printf("TEST34***O   K***\n");
    }
    else
    {
        printf("TEST34***N   G***\n");
    }
    if (*usintb[1] == 0)
    {
        printf("TEST35***O   K***\n");
    }
    else
    {
        printf("TEST35***N   G***\n");
    }
    if (*ulintb[0] == 4294967295)
    {
        printf("TEST36***O   K***\n");
    }
    else
    {
        printf("TEST36***N   G***\n");
    }
    if (*ulintb[1] == 0)
    {
        printf("TEST37***O   K***\n");
    }
    else
    {
        printf("TEST37***N   G***\n");
    }
#ifndef nollint
    if (*ullintb[0] == 4294967295)
    {
        printf("TEST38***O   K***\n");
    }
    else
    {
        printf("TEST38***N   G***\n");
    }
    if (*ullintb[1] == 0)
    {
        printf("TEST39***O   K***\n");
    }
    else
    {
        printf("TEST39***N   G***\n");
    }
#else
        printf("TEST38***O   K***\n");
        printf("TEST39***O   K***\n");
#endif
    printf("***TEST FOR TOKEN***END\n");
}
