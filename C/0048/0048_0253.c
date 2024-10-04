#include <stdio.h>
int main()
{

    float         fl1 = 128E1;
    float         fl2 = 128e1;
    float         fl3 = 128E+1;
    float         fl4 = 128e+1;
    float         fl5 = 12800E-1;
    float         fl6 = 12800e-1;

    double        do1 = 128E1;
    double        do2 = 128e1;
    double        do3 = 128E+1;
    double        do4 = 128e+1;
    double        do5 = 12800E-1;
    double        do6 = 12800e-1;

    long  double  ld1 = 128E1;
    long  double  ld2 = 128e1;
    long  double  ld3 = 128E+1;
    long  double  ld4 = 128e+1;
    long  double  ld5 = 12800E-1;
    long  double  ld6 = 12800e-1;


    printf("***TEST FOR TOKEN***STARTED\n");
    if(fl1 == fl2)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }


    if(fl3 == fl4)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }


    if(fl5 == fl6)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }


    if(do1 == do2)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }


    if(do3 == do4)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }


    if(do5 == do6)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }


    if(ld1 == ld2)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }


    if(ld3 == ld4)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }


    if(ld5 == ld6)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }


    if(fl1 == fl4)
    {
        if(fl3 == fl6)
        {
            if(fl2 == fl5)
            {
                printf("TEST10***O   K***\n");
                printf("FLOAT ***O   K***\n");
            }
            else
            {
                printf("TEST10***N   G***\n");
            }
        }
        else
        {
            printf("TEST10***N   G***\n");
        }
    }
    else
    {
        printf("TEST10***N   G***\n");
    }


    if(do1 == do4)
    {
        if(do3 == do6)
        {
            if(do2 ==do5)
            {
                printf("TEST11***O   K***\n");
                printf("DOUBLE***O   K***\n");
            }
            else
            {
                printf("TEST11***N   G***\n");
            }
        }
        else
        {
            printf("TEST11***N   G***\n");
        }
    }
    else
    {
        printf("TEST11***N   G***\n");
    }


    if(ld1 == ld4)
    {
        if(ld3 == ld6)
        {
            if(ld2 == ld5)
            {
                printf("TEST12***O   K***\n");
                printf("LONG DOUBLE***O   K\n");
            }
            else
            {
                printf("TEST12***N   G***\n");
            }
        }
        else
        {
            printf("TEST12***N   G***\n");
        }
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    printf("***TEST FOR TOKEN***END\n");
}
