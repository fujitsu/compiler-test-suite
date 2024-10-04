#include <stdio.h>
int main()
{

    float         fl1 = 12345678901234567890123456789.l;
    float         fl2 = 12345678901234567890123456789.L;
    float         fl3 = 12345678901234567890123456789.f;
    float         fl4 = 12345678901234567890123456789.F;

    double        do1 = 12345678901234567890123456789.l;
    double        do2 = 12345678901234567890123456789.L;
    double        do3 = 12345678901234567890123456789.f;
    double        do4 = 12345678901234567890123456789.F;

    long  double  ld1 = 12345678901234567890123456789.l;
    long  double  ld2 = 12345678901234567890123456789.L;
    long  double  ld3 = 12345678901234567890123456789.f;
    long  double  ld4 = 12345678901234567890123456789.F;

    printf("***TEST FOR TOKEN***STARTED\n");
    if(1.234567e+28f < fl1 &&
       1.234569e+28f > fl1)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(12345678901234550000000000000. < do1 &&
       12345678901234570000000000000. > do1)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }

    if(ld1 == 12345678901234567890123456789.l)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if(1.234567e+28F < fl2 &&
       1.234569e+28F > fl2)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if(12345678901234550000000000000. < do2 &&
       12345678901234570000000000000. > do2)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if(ld2 == 12345678901234567890123456789.l)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if(1.234567e+28f < fl3 &&
       1.234569e+28f > fl3)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if(1.234567e+28f < do3 &&
       1.234569e+28f > do3)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
    if(ld3 == 12345678901234567890123456789.f)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if(1.234567e+28F < fl4 &&
       1.234569e+28F > fl4)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
    if(1.234567e+28f < do4 &&
       1.234569e+28f > do4)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
    if(ld4 == 12345678901234567890123456789.f)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    printf("***TEST FOR TOKEN***END\n");
}
