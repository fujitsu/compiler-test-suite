#include <stdio.h>
int main()
{
    int   inta = 0x1234ABCDl;
    int   intb = 0x1234ABCDL;
    int   intc = 0x1234ABCDu;
    int   intd = 0x1234ABCDU;
    int   inte = 0x1234ABCDul;
    int   intf = 0x1234ABCDUl;
    int   intg = 0x1234ABCDuL;
    int   inth = 0x1234ABCDUL;
    int   inti = 0x1234ABCDlu;
    int   intj = 0x1234ABCDlU;
    int   intk = 0x1234ABCDLu;
    int   intl = 0x1234ABCDLU;

    printf("***TEST FOR TOKEN***STARTED\n");
    if (inta==305441741)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if (intb==305441741)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if (intc==305441741)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if (intd==305441741)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if (inte==305441741)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if (intf==305441741)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if (intg==305441741)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if (inth==305441741)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    if (inti==305441741)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if (intj==305441741)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
    if (intk==305441741)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if (intl==305441741)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    printf("***TEST FOR TOKEN***END\n");
}
