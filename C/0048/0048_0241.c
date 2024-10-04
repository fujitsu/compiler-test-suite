#include <stdio.h>
int main()
{
    char            nchara[] = { 127,0 };
    int              ninta[] = { 2147483647,-2147483648};
    short int       nsinta[] = { 32767,-32768 };
    long  int       nlinta[] = { 2147483647,-2147483648 };
#ifndef nollint
    long  long int nllinta[] =
                      { 9223372036854775807LL,-9223372036854775808LL };
#endif
    float            nflta[] = { 1.2f,3.4e+5f,6.7e-8f };
    double           ndbla[] = { 1.2 ,3.4e+5 ,6.7e-8  };
    long double     nldbla[] = { 1.2l,3.4e+5l,6.7e-8l };


    printf("***TEST FOR TOKEN***STARTED\n");

    if(nchara[0] == 127)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(nchara[1] == 0)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if(ninta[0] == 2147483647)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
    if(ninta[1] == -2147483648)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
    if(nsinta[0] == 32767)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
    if(nsinta[1] == -32768)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
    if(nlinta[0] == 2147483647)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
    if(nlinta[1] == -2147483648)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
#ifndef nollint
    if(nllinta[0] == 9223372036854775807LL)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
    if(nllinta[1] == -9223372036854775808LL)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
#endif
    if(nflta[0] ==  1.2f)
    {
        if(ndbla[0] == 1.2)
        {
            if(nldbla[0] == 1.2l)
            {
                printf("TEST11***O   K***\n");
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
    if(nflta[1] ==  3.4e+5)
    {
        if(ndbla[1] == 3.4e+5)
        {
            if(nldbla[1] == 3.4e+5)
            {
                printf("TEST12***O   K***\n");
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
    if(nflta[2] ==  6.7e-8f)
    {
        if(ndbla[2] == 6.7e-8)
        {
            if(nldbla[2] == 6.7e-8l)
            {
                printf("TEST13***O   K***\n");
            }
            else
            {
                printf("TEST13***N   G***\n");
            }
        }
        else
        {
            printf("TEST13***N   G***\n");
        }
    }
    else
    {
        printf("TEST13***N   G***\n");
    }
    printf ("***TEST FOR TOKEN***END\n");
}
