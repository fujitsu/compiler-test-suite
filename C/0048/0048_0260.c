#include <stdio.h>
int main()
{

    float         fl1 = 1.2345678l;
    float         fl2 = 1.2345678L;
    float         fl3 = 1.2345678901234567890123456789f;
    float         fl4 = 1.2345678901234567890123456789F;

    double        do1 = 1.2345678901234567890123456789l;
    double        do2 = 1.2345678901234567890123456789L;
    double        do3 = 1.2345678901234567890123456789f;
    double        do4 = 1.2345678901234567890123456789F;

    long  double  ld1 = 1.2345678901234567890123456789l;
    long  double  ld2 = 1.2345678901234567890123456789L;
    long  double  ld3 = 1.2345678901234567890123456789f;
    long  double  ld4 = 1.2345678901234567890123456789F;

    printf("***TEST FOR TOKEN***STARTED\n");
    if(fl1 == 1.2345678f)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(1.234567890123455 < do1 && do1 < 1.234567890123457)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if(ld1 == 1.2345678901234567890123456789l)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if(fl2 == 1.2345678f)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if(1.234567890123455 < do2 && do2 < 1.234567890123457)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if(ld2 == 1.2345678901234567890123456789l)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if(fl3 == 1.2345678901234567890123456789f)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if(do3 == 1.2345678901234567890123456789f)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    if(ld3 == 1.2345678901234567890123456789f)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if(fl4 == 1.2345678901234567890123456789f)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
    if(do4 == 1.2345678901234567890123456789f)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if(ld4 == 1.2345678901234567890123456789f)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    printf ("***TEST FOR TOKEN***END\n");
}
