#include <stdio.h>
union tag2 {
             char   unicha;
             int    uniina;
             double unidba;
           } ;

struct tag1 {
              short int     stsia;
              long long int stllia;
              long double   stlda;
            } ;
int main()
{
    signed char               scharfu1();
    signed long int           slintfu1();
    signed long long int      sllintf1();
    unsigned char             ucharfu1();
    unsigned int              uintfun1();

    union tag2 uni1;
    struct tag1 st1;

    int                 inta;
    int                 intb;
    char                chara;
    signed int          sinta;
    long long int       *p;
    long long int       llinta = 9223372036854775807LL;
    unsigned short int  usinta;
    double              dbla;

    signed char          rsc;
    signed long int      rli;
    signed long long int rlli;
    unsigned char        ruc;
    unsigned int         rui;

    uni1.unicha = 100;
    uni1.uniina = 256;
    uni1.unidba = 5.12e+2;
    st1.stsia   = 32767;
    st1.stllia  = -9223372036854775808LL;
    st1.stlda   = 2048.0;
    inta        = 0;
    intb        = 2147483647;
    chara       = 255;
    sinta       = -2147483648;
    p           = &llinta;
    usinta      = 65535;
    dbla        = 1.024e+3;

    printf("*** TEST FOR EXPRESSION ***STARTED\n");

    rsc = scharfu1(uni1);
    if(rsc == 127)
        printf("-TEST01-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST01-4*** RETURN CORD NG ***\n");

    rli = slintfu1(inta = inta + 10);
    if(rli == 2147483647)
        printf("-TEST02-2*** RETURN CORD OK ***\n");
    else
        printf("-TEST02-2*** RETURN CORD NG ***\n");

    rlli = sllintf1(chara,sinta,p);
    if(rlli == -9223372036854775808LL)
        printf("-TEST03-4*** RETURN CORD OK ***\n");
    else
        printf("-TEST03-4*** RETURN CORD NG ***\n");

    ruc = ucharfu1(intb,usinta,st1);
    if(ruc == 255)
        printf("-TEST04-6*** RETURN CORD OK ***\n");
    else
        printf("-TEST04-6*** RETURN CORD NG ***\n");

    rui = uintfun1(&uni1,dbla,inta=inta-5);
    if(rui == 4294967295)
        printf("-TEST05-6*** RETURN CORD OK ***\n");
    else
        printf("-TEST05-6*** RETURN CORD NG ***\n");


    printf("*** TEST FOR EXPRESSION ***ENDED\n");

}


signed char scharfu1(uni2)
union tag2 uni2;
{
    if(uni2.unidba == 512)
        printf("-TEST01-1*** O     K ***\n");
    else
        printf("-TEST01-1*** N     G ***\n");

    return(127);
}


signed long int slintfu1(intc)
int           intc;
{
    if(intc == 10)
        printf("-TEST02-1*** O     K ***\n");
    else
        printf("-TEST02-1*** N     G ***\n");

    return(2147483647);
}


signed long long int sllintf1(charb,sintb,pb)
char          charb;
signed int    sintb;
long long int *pb;
{
#ifdef S_CHAR
    if(charb == -1)
#else
    if(charb == 255)
#endif
        printf("-TEST03-1*** O     K ***\n");
    else
        printf("-TEST03-1*** N     G ***\n");

    if(sintb == -2147483648)
        printf("-TEST03-2*** O     K ***\n");
    else
        printf("-TEST03-2*** N     G ***\n");

    if(*pb == 9223372036854775807LL)
        printf("-TEST03-3*** O     K ***\n");
    else
        printf("-TEST03-3*** N     G ***\n");

    return(-9223372036854775808LL);
}


unsigned char ucharfu1(intd,usintb,st2)
int                intd;
unsigned short int usintb;
struct tag1 st2;
{
    if(intd == 2147483647)
        printf("-TEST04-1*** O     K ***\n");
    else
        printf("-TEST04-1*** N     G ***\n");

    if(usintb == 65535)
        printf("-TEST04-2*** O     K ***\n");
    else
        printf("-TEST04-2*** N     G ***\n");

    if(st2.stsia == 32767)
        printf("-TEST04-3*** O     K ***\n");
    else
        printf("-TEST04-3*** N     G ***\n");

    if(st2.stllia == -9223372036854775808LL)
        printf("-TEST04-4*** O     K ***\n");
    else
        printf("-TEST04-4*** N     G ***\n");

    if(st2.stlda == 2048)
        printf("-TEST04-5*** O     K ***\n");
    else
        printf("-TEST04-5*** N     G ***\n");

    return(255);
}


unsigned int uintfun1(uni3,dblb,intf)
union  tag2 *uni3;
double             dblb;
int                intf;
{
    if(uni3->unidba == 512)
        printf("-TEST05-1*** O     K ***\n");
    else
        printf("-TEST05-1*** N     G ***\n");

    if(dblb == 1024)
        printf("-TEST05-2*** O     K ***\n");
    else
        printf("-TEST05-2*** N     G ***\n");

    if(intf == 5)
        printf("-TEST05-3*** O     K ***\n");
    else
        printf("-TEST05-3*** N     G ***\n");

    return(4294967295);
}
