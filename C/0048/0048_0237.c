#include <stdio.h>
int subsst (void);
int union1 (void);
int struct1 (void);
int main()
{
    struct1();
    union1();
    subsst();
}

int 
struct1 (void)
{
    struct  tag1{
                  char          nchar1;
                  char          nchar2;
                  short int     sint1;
                  short int     sint2;
                  int           nint1;
                  int           nint2;
                  long int      lint1;
                  long int      lint2;
#ifndef nollint
                  long long int llint1;
                  long long int llint2;
#endif
                  float         flt1;
                  double        dbl1;
                  long double   ldbl1;
                } stra;

    stra.nchar1 = 127;
    stra.nchar2 = 0;
    stra.sint1  = 32767;
    stra.sint2  = -32768;
    stra.nint1  = 2147483647;
    stra.nint2  = -2147483648;
    stra.lint1  = 2147483647;
    stra.lint2  = -2147483648;
#ifndef nollint
    stra.llint1 = 9223372036854775807LL;
    stra.llint2 = -9223372036854775808LL;
#endif
    stra.flt1   = 1.2e+3;
    stra.dbl1   = 4.5e-6;
    stra.ldbl1  = -7.8e+9;

    printf("-1***TEST FOR TOKEN***STARTED\n");

    if(stra.nchar1 == 127)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(stra.nchar2 == 0)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if(stra.sint1 == 32767)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if(stra.sint2 == -32768)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if(stra.nint1 == 2147483647)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if(stra.nint2 == -2147483648)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if(stra.lint1 == 2147483647)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if(stra.lint2 == -2147483648)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
#ifndef nollint
    if(stra.llint1 == 9223372036854775807LL)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if(stra.llint2 == -9223372036854775808LL)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
#else
    printf("TEST09 IS NOT EXECUTE FOR LONG LONG INT\n");
    printf("TEST10 IS NOT EXECUTE FOR LONG LONG INT\n");
#endif
    if(stra.flt1 == 1.2e+3)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if(stra.dbl1 == 4.5e-6)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    if(stra.ldbl1 == -7.8e+9)
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N  G***\n");
    }
    printf("-1***TEST FOR TOKEN***END\n");
}


int 
union1 (void)
{
    union tag1 {
                 char                 ncmax;
                 char                 ncmin;
               } nchar;
    union tag2 {
                 short int            simax;
                 short int            simin;
               } nsint;
    union tag3 {
                 int                  nimax;
                 int                  nimin;
               } nint;
    union tag4 {
                 long int             nlmax;
                 long int             nlmin;
               } nlint;
#ifndef nollint
    union tag5 {
                 long long int        nllmax;
                 long long int        nllmin;
               } nllint;
#endif
    union tag6 {
                 float                nfmax;
                 float                nfmin;
               } nflt;
    union tag7 {
                 double               ndmax;
                 double               ndmin;
               } ndbl;
    union tag8 {
                 long double          nlldmax;
                 long double          nlldmin;
               } nlldbl;

    printf("-2***TEST FOR TOKEN***\n");

    nchar.ncmax = 127;
    if(nchar.ncmin == 127)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    nsint.simax = 32767;
    if(nsint.simin == 32767)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    nint.nimax = 2147483647;
    if(nint.nimin == 2147483647)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    nlint.nlmax = 2147483647;
    if(nlint.nlmin == 2147483647)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
#ifndef nollint
    nllint.nllmax = 9223372036854775807LL;
    if(nllint.nllmin == 9223372036854775807LL)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
#else
    printf("TEST05 IS NOT EXECUTE FOR LONG LONG INT\n");
#endif
    nflt.nfmax = 1.2e+3;
    if(nflt.nfmin == 1.2e+3)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    ndbl.ndmax = 4.5e-6;
    if(ndbl.ndmin== 4.5e-6)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    nlldbl.nlldmax = 7.8e9;
    if(nlldbl.nlldmin == 7.8e9)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    printf("-2***TEST FOR TOKEN***END\n");
}


int 
subsst (void)
{
    char nchara();
    int  ninta();
    short int  nsinta();
    long int nlinta();
#ifndef nollint
    long long int nllinta();
#endif
    float nflta();
    double ndbla();
    long double nldbla();
    signed char schara();
    signed int sinta();
    signed short int ssinta();
    signed long int slinta();
#ifndef nollint
    signed long long int  sllinta();
#endif
    unsigned char uchara();
    unsigned int uinta();
    unsigned short int usinta();
    unsigned long int ulinta();
#ifndef nollint
    unsigned long long int  ullinta();
#endif

    printf("-3***TEST FOR TOKEN***STARTED\n");


    if (nchara()==1)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if (ninta()==2)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if (nsinta()==3)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if (nlinta()==4)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
#ifndef nollint
    if (nllinta()==5)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
#else
    printf("TEST05 IS NOT EXECUTE FOR LONG LONG INT\n");
#endif
    if (nflta()==6)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if (ndbla()==7)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if (nldbla()==8)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    if (schara()==9)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if (sinta()==10)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
    if (ssinta()==11)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if (slinta()==12)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
#ifndef nollint
    if (sllinta()==13)
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N   G***\n");
    }
#else
    printf("TEST13 IS NOT EXECUTE FOR LONG LONG INT\n");
#endif
    if (uchara()==14)
    {
        printf("TEST14***O   K***\n");
    }
    else
    {
        printf("TEST14***N   G***\n");
    }
    if (uinta()==15)
    {
        printf("TEST15***O   K***\n");
    }
    else
    {
        printf("TEST15***N   G***\n");
    }
    if (usinta()==16)
    {
        printf("TEST16***O   K***\n");
    }
    else
    {
        printf("TEST16***N   G***\n");
    }
    if (ulinta()==17)
    {
        printf("TEST17***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }
#ifndef nollint
    if (ullinta()==18)
    {
        printf("TEST18***O   K***\n");
    }
    else
    {
        printf("TEST18***N   G***\n");
    }
#else
    printf("TEST18 IS NOT EXECUTE FOR LONG LONG INT\n");
#endif
    printf("-3***TEST FOR TOKEN***END\n");
}


char 
nchara (void)
{
    return 1;
}

int 
ninta (void)
{
    return 2;
}

short int 
nsinta (void)
{
    return 3;
}

long int 
nlinta (void)
{
    return 4;
}

#ifndef nollint
long long int 
nllinta (void)
{
    return 5;
}
#endif

float 
nflta (void)
{
    return 6;
}

double 
ndbla (void)
{
    return 7;
}

long double 
nldbla (void)
{
    return 8;
}

signed char 
schara (void)
{
    return 9;
}

signed int 
sinta (void)
{
    return 10;
}

signed short int 
ssinta (void)
{
    return 11;
}

signed long int 
slinta (void)
{
    return 12;
}

#ifndef nollint
signed long long int 
sllinta (void)
{
    return 13;
}
#endif

unsigned char 
uchara (void)
{
    return 14;
}

unsigned int 
uinta (void)
{
    return 15;
}

unsigned short int 
usinta (void)
{
    return 16;
}

unsigned long int 
ulinta (void)
{
    return 17;
}

#ifndef nollint
unsigned long long int 
ullinta (void)
{
    return 18;
}
#endif
