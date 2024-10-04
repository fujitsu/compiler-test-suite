#include <stdio.h>
int main()
{
    int                inta    = 017777777777;
    int                intb    = 077777;
    int                intc    = 0100000;
    long  int          linta   = 017777777777;
    unsigned      int  uinta   = 020000000000;
    unsigned long int  ulint   = 037777777777;
#ifndef nollint
    long  long  int    llinta  = 020000000000;
    long  long  int    llintb  = 0777777777777777777777LL;
#endif

    printf("***TEST FOR TOKEN***STARTED\n");
    if(inta == 2147483647)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(intb == 32767)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if(intc == 32768)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if(linta == 2147483647)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if(uinta == 2147483648)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if(ulint == 4294967295)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
#ifndef nollint
    if(llinta == 2147483648)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if(llintb == 9223372036854775807LL)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
#endif
     printf ("***TEST FOR TOKEN***END\n");
}
