#include <stdio.h>
int main()
{
    int   inta = 2147483647;
    int   intb = 017777777777lu;
    int   intc = 0x7ffffffflu;
    int   intd = 2147483647lu;
    int   inte = 017777777777lU;
    int   intf = 0x7ffffffflU;
    int   intg = 2147483647lU;

    int   inth = 017777777777Lu;
    int   inti = 0x7fffffffLu;
    int   intj = 2147483647Lu;
    int   intk = 017777777777LU;
    int   intl = 0x7fffffffLU;
    int   intm = 2147483647LU;

    printf("***TEST FOR TOKEN***STARTED\n");
    if (inta==intb)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if (inta==intc)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if (inta==intd)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if (inta==inte)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if (inta==intf)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if (inta==intg)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if (inta==inth)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if (inta==inti)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    if (inta==intj)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if (inta==intk)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
    if (inta==intl)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if (inta==intm)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    printf("***TEST FOR TOKEN***END\n");
}