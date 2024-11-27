#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    int   inta = 0x12345678l;
    int   intb = 0x12345678L;
    int   intc = 0x12345678u;
    int   intd = 0x12345678U;
    int   inte = 0x12345678ul;
    int   intf = 0x12345678Ul;
    int   intg = 0X12345678uL;
    int   inth = 0X12345678UL;
    int   inti = 0X12345678lu;
    int   intj = 0X12345678lU;
    int   intk = 0X12345678Lu;
    int   intl = 0X12345678LU;

    printf("\n");
    if (inta==305419896)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if (intb==305419896)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if (intc==305419896)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if (intd==305419896)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if (inte==305419896)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if (intf==305419896)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if (intg==305419896)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if (inth==305419896)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    if (inti==305419896)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if (intj==305419896)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
    if (intk==305419896)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if (intl==305419896)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    printf("\n");
exit (0);
}
