#include <stdio.h>
int main()
{

    float         fl1 = 1.23456789E1f;
    float         fl2 = 1.23456789e1f;
    float         fl3 = 1.23456789E+1f;
    float         fl4 = 1.23456789e+1f;
    float         fl5 = 1.23456789E-1f;
    float         fl6 = 1.23456789e-1f;

    double        do1 = 1.234567890123456789E1f;
    double        do2 = 1.234567890123456789e1f;
    double        do3 = 1.234567890123456789E+1f;
    double        do4 = 1.234567890123456789e+1f;
    double        do5 = 1.234567890123456789E-1f;
    double        do6 = 1.234567890123456789e-1f;

    long  double  ld1 = 1.2345678901234567890123456789E1f;
    long  double  ld2 = 1.2345678901234567890123456789e1f;
    long  double  ld3 = 1.2345678901234567890123456789E+1f;
    long  double  ld4 = 1.2345678901234567890123456789e+1f;
    long  double  ld5 = 1.2345678901234567890123456789E-1f;
    long  double  ld6 = 1.2345678901234567890123456789e-1f;


    printf("***TEST FOR TOKEN***STARTED\n");
    if(fl1 == 1.23456789e+1f)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }


    if(fl1 == fl2)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }


    if(fl2 == fl3)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }


    if(fl3 == fl4)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }


    if(fl5 == 1.23456789e-1f)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }


    if(fl5 == fl6)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }


    if(do1 == 1.234567890123456789e+1f)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }


    if(do1 == do2)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }


    if(do2 == do3)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }


    if(do3 == do4)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }


    if(do5 == 1.234567890123456789e-1f)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }


    if(fl5 == fl6)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }


    if(ld1 == 1.2345678901234567890123456789e+1f)
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N   G***\n");
    }


    if(ld1 == ld2)
    {
        printf("TEST14***O   K***\n");
    }
    else
    {
        printf("TEST14***N   G***\n");
    }


    if(do2 == do3)
    {
        printf("TEST15***O   K***\n");
    }
    else
    {
        printf("TEST15***N   G***\n");
    }


    if(ld3 == ld4)
    {
        printf("TEST16***O   K***\n");
    }
    else
    {
        printf("TEST16***N   G***\n");
    }


    if(do5 == 1.2345678901234567890123456789e-1f)
    {
        printf("TEST17***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }


    if(fl5 == fl6)
    {
        printf("TEST18***O   K***\n");
    }
    else
    {
        printf("TEST18***N   G***\n");
    }
    printf("***TEST FOR TOKEN***END\n");
}
